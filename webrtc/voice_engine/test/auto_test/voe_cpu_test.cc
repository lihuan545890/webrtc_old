/*
 *  Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. An additional intellectual property rights grant can be found
 *  in the file PATENTS.  All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 */

#include "voe_cpu_test.h"

#include <stdio.h>
#include <string.h>
#include <time.h>
#include <cassert>
#if defined(_WIN32)
#include <conio.h>
#endif

#include "webrtc/system_wrappers/interface/scoped_ptr.h"
#include "webrtc/test/channel_transport/include/channel_transport.h"

using namespace webrtc;
using namespace test;

namespace voetest {

#define CHECK(expr)                                             \
    if (expr)                                                   \
    {                                                           \
        printf("Error at line: %i, %s \n", __LINE__, #expr);    \
        printf("Error code: %i \n", base->LastError());  \
        PAUSE												    \
        return -1;                                              \
    }

VoECpuTest::VoECpuTest(VoETestManager& mgr)
    : _mgr(mgr) {

}

int VoECpuTest::DoTest() {
  printf("------------------------------------------------\n");
  printf(" CPU Reference Test\n");
  printf("------------------------------------------------\n");

  VoEBase* base = _mgr.BasePtr();
#ifdef WEBRTC_VOICE_ENGINE_FILE_API
  VoEFile* file = _mgr.FilePtr();
#endif
#ifdef WEBRTC_VOICE_ENGINE_CODEC_API
  VoECodec* codec = _mgr.CodecPtr();
#endif
  VoEAudioProcessing* apm = _mgr.APMPtr();
#ifdef WEBRTC_VOICE_ENGINE_NETWORK_API
  VoENetwork* voe_network = _mgr.NetworkPtr();
#endif
  int channel(-1);
  CodecInst isac;

  isac.pltype = 104;
  strcpy(isac.plname, "ISAC");
  isac.pacsize = 960;
  isac.plfreq = 32000;
  isac.channels = 1;
  isac.rate = -1;

  CHECK(base->Init());
  channel = base->CreateChannel();
  #ifdef WEBRTC_VOICE_ENGINE_NETWORK_API
  scoped_ptr<VoiceChannelTransport> voice_socket_transport(
      new VoiceChannelTransport(voe_network, channel));
  
  CHECK(voice_socket_transport->SetSendDestination("127.0.0.1", 5566));
  CHECK(voice_socket_transport->SetLocalReceiver(5566));
  #endif
  #ifdef WEBRTC_VOICE_ENGINE_CODEC_API
  CHECK(codec->SetRecPayloadType(channel, isac));
  CHECK(codec->SetSendCodec(channel, isac));
  #endif
  CHECK(base->StartReceive(channel));
  CHECK(base->StartPlayout(channel));
  CHECK(base->StartSend(channel));
  #ifdef WEBRTC_VOICE_ENGINE_FILE_API
  CHECK(file->StartPlayingFileAsMicrophone(channel, _mgr.AudioFilename(),
          true, true));
  #endif
  #ifdef WEBRTC_VOICE_ENGINE_CODEC_API
  CHECK(codec->SetVADStatus(channel, true));
  #endif
  CHECK(apm->SetAgcStatus(true, kAgcAdaptiveAnalog));
  CHECK(apm->SetNsStatus(true, kNsModerateSuppression));
  CHECK(apm->SetEcStatus(true, kEcAec));

  TEST_LOG("\nMeasure CPU and memory while running a full-duplex"
    " iSAC-swb call.\n\n");

  PAUSE

  CHECK(base->StopSend(channel));
  CHECK(base->StopPlayout(channel));
  CHECK(base->StopReceive(channel));

  base->DeleteChannel(channel);
  CHECK(base->Terminate());
  return 0;
}

} //  namespace voetest
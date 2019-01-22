/*
 *  Copyright (c) 2011 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. An additional intellectual property rights grant can be found
 *  in the file PATENTS.  All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 */

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <android/log.h>

#include "org_webrtc_voiceengine_test_AndroidTest.h"

#include "voe_base.h"
#include "voe_audio_processing.h"

//#define USE_SRTP
//#define INIT_FROM_THREAD
//#define START_CALL_FROM_THREAD

#define WEBRTC_LOG_TAG "*WEBRTCN*" // As in WEBRTC Native...
#define VALIDATE_BASE_POINTER \
    if (!veData1.base) \
    { \
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG, \
                            "Base pointer doesn't exist"); \
        return -1; \
    }

// Register functions in JNI_OnLoad()
// How do we ensure that VoE is deleted? JNI_OnUnload?
// What happens if class is unloaded? When loaded again, NativeInit will be
// called again. Keep what we have?
// Should we do something in JNI_OnUnload?
// General design: create a class or keep global struct with "C" functions?
// Otherwise make sure symbols are as unique as possible.

// TestType enumerator
enum TestType
{
  Invalid = -1,
  Standard = 0,
  Extended = 1,
  Stress   = 2,
  Unit     = 3,
  CPU      = 4
};

// ExtendedSelection enumerator
enum ExtendedSelection
{
   XSEL_Invalid = -1,
   XSEL_None = 0,
   XSEL_All,
   XSEL_Base,
   XSEL_CallReport,
   XSEL_Codec,
   XSEL_DTMF,
   XSEL_Encryption,
   XSEL_ExternalMedia,
   XSEL_File,
   XSEL_Hardware,
   XSEL_NetEqStats,
   XSEL_Network,
   XSEL_PTT,
   XSEL_RTP_RTCP,
   XSEL_VideoSync,
   XSEL_VideoSyncExtended,
   XSEL_VolumeControl,
   XSEL_VQE,
   XSEL_APM,
   XSEL_VQMon
};

using namespace webrtc;

// VoiceEngine data struct
typedef struct
{
    // VoiceEngine
    VoiceEngine* ve;
    // Sub-APIs
    VoEBase* base;    
    JavaVM* jvm;
} VoiceEngineData;

//Global variables visible in this file
static VoiceEngineData veData1;
static VoiceEngineData veData2;

// "Local" functions (i.e. not Java accessible)
static bool GetSubApis(VoiceEngineData &veData);
static bool ReleaseSubApis(VoiceEngineData &veData);

//////////////////////////////////////////////////////////////////
// General functions
//////////////////////////////////////////////////////////////////

/////////////////////////////////////////////
// JNI_OnLoad
//
jint JNI_OnLoad(JavaVM* vm, void* /*reserved*/)
{
    if (!vm)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "JNI_OnLoad did not receive a valid VM pointer");
        return -1;
    }

    // Get JNI
    JNIEnv* env;
    if (JNI_OK != vm->GetEnv(reinterpret_cast<void**> (&env),
                             JNI_VERSION_1_4))
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "JNI_OnLoad could not get JNI env");
        return -1;
    }

    // Get class to register the native functions with
    // jclass regClass = env->FindClass("webrtc/android/AndroidTest");
    // if (!regClass) {
    // return -1; // Exception thrown
    // }

    // Register native functions
    // JNINativeMethod methods[1];
    // methods[0].name = NULL;
    // methods[0].signature = NULL;
    // methods[0].fnPtr = NULL;
    // if (JNI_OK != env->RegisterNatives(regClass, methods, 1))
    // {
    // return -1;
    // }

    // Init VoiceEngine data
    memset(&veData1, 0, sizeof(veData1));
    memset(&veData2, 0, sizeof(veData2));

    // Store the JVM
    veData1.jvm = vm;
    veData2.jvm = vm;

    return JNI_VERSION_1_4;
}

/////////////////////////////////////////////
// Native initialization
//
JNIEXPORT jboolean JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_NativeInit(
        JNIEnv * env,
        jclass)
{
    // Look up and cache any interesting class, field and method IDs for
    // any used java class here

    return true;
}

//////////////////////////////////////////////////////////////////
// VoiceEngine API wrapper functions
//////////////////////////////////////////////////////////////////

/////////////////////////////////////////////
// Create VoiceEngine instance
//
JNIEXPORT jboolean JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_Create(
        JNIEnv *env,
        jobject context)
{
    // Check if already created
    if (veData1.ve)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "VoE already created");
        return false;
    }

    // Set instance independent Java objects
    VoiceEngine::SetAndroidObjects(veData1.jvm, env, context);

#ifdef START_CALL_FROM_THREAD
    threadTest.RunTest();
#else
    // Create
    veData1.ve = VoiceEngine::Create();
    if (!veData1.ve)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "Create VoE failed");
        return false;
    }

    // Get sub-APIs
    if (!GetSubApis(veData1))
    {
        // If not OK, release all sub-APIs and delete VoE
        ReleaseSubApis(veData1);
        if (!VoiceEngine::Delete(veData1.ve))
        {
            __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                                "Delete VoE failed");
        }
        return false;
    }
#endif

    return true;
}

/////////////////////////////////////////////
// Delete VoiceEngine instance
//
JNIEXPORT jboolean JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_Delete(
        JNIEnv *,
        jobject)
{
#ifdef START_CALL_FROM_THREAD
    threadTest.CloseTest();
#else
    // Check if exists
    if (!veData1.ve)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "VoE does not exist");
        return false;
    }

    // Release sub-APIs
    ReleaseSubApis(veData1);

    // Delete
    if (!VoiceEngine::Delete(veData1.ve))
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "Delete VoE failed");
        return false;
    }

    veData1.ve = NULL;
#endif

    // Clear instance independent Java objects
    VoiceEngine::SetAndroidObjects(NULL, NULL, NULL);

    return true;
}

/////////////////////////////////////////////
// [Base] Initialize VoiceEngine
//
JNIEXPORT jint JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_Init(
        JNIEnv *,
        jobject,
        jboolean enableTrace,
        jboolean useExtTrans)
{
    VALIDATE_BASE_POINTER;

    if (enableTrace)
    {
        if (0 != VoiceEngine::SetTraceFile("/sdcard/trace.txt"))
        {
            __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                                "Could not enable trace");
        }
        if (0 != VoiceEngine::SetTraceFilter(kTraceAll))
        {
            __android_log_write(ANDROID_LOG_WARN, WEBRTC_LOG_TAG,
                                "Could not set trace filter");
        }
    }

    int retVal = 0;
#ifdef INIT_FROM_THREAD
    threadTest.RunTest();
    usleep(200000);
#else
    retVal = veData1.base->Init();
#endif
    return retVal;
}

/////////////////////////////////////////////
// [Base] Terminate VoiceEngine
//
JNIEXPORT jint JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_Terminate(
        JNIEnv *,
        jobject)
{
    VALIDATE_BASE_POINTER;

    jint retVal = veData1.base->Terminate();

    return retVal;
}

/////////////////////////////////////////////
// [Base] Create channel
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_CreateChannel(
        JNIEnv *,
        jobject)
{
    VALIDATE_BASE_POINTER;
    jint channel = veData1.base->CreateChannel();

    return channel;
}

/////////////////////////////////////////////
// [Base] Delete channel
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_DeleteChannel(
        JNIEnv *,
        jobject,
        jint channel)
{
    VALIDATE_BASE_POINTER;
    return veData1.base->DeleteChannel(channel);
}

/////////////////////////////////////////////
// [Base] SetLocalReceiver
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_SetLocalReceiver(
        JNIEnv *,
        jobject,
        jint channel,
        jint port)
{
    VALIDATE_BASE_POINTER;
    return veData1.base->SetLocalReceiver(channel, port);
}

/////////////////////////////////////////////
// [Base] SetSendDestination
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_SetSendDestination(
        JNIEnv *env,
        jobject,
        jint channel,
        jint port,
        jstring ipaddr)
{
    VALIDATE_BASE_POINTER;

    const char* ipaddrNative = env->GetStringUTFChars(ipaddr, NULL);
    if (!ipaddrNative)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "Could not get UTF string");
        return -1;
    }

    jint retVal = veData1.base->SetSendDestination(channel, port, ipaddrNative);

    env->ReleaseStringUTFChars(ipaddr, ipaddrNative);

    return retVal;
}

/////////////////////////////////////////////
// [Base] StartListen
//
JNIEXPORT jint JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_StartListen(
        JNIEnv *,
        jobject,
        jint channel)
{
#ifdef USE_SRTP
    VALIDATE_ENCRYPT_POINTER;
    bool useForRTCP = false;
    if (veData1.encrypt->EnableSRTPReceive(
                    channel,CIPHER_AES_128_COUNTER_MODE,30,AUTH_HMAC_SHA1,
                    16,4, ENCRYPTION_AND_AUTHENTICATION,
                    (unsigned char*)nikkey, useForRTCP) != 0)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                "Failed to enable SRTP receive");
        return -1;
    }
#endif

    VALIDATE_BASE_POINTER;
    int retVal = veData1.base->StartReceive(channel);

    return retVal;
}

/////////////////////////////////////////////
// [Base] Start playout
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_StartPlayout(
        JNIEnv *,
        jobject,
        jint channel)
{
    VALIDATE_BASE_POINTER;
    int retVal = veData1.base->StartPlayout(channel);

    return retVal;
}

/////////////////////////////////////////////
// [Base] Start send
//
JNIEXPORT jint JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_StartSend(
        JNIEnv *,
        jobject,
        jint channel)
{
    /*    int dscp(0), serviceType(-1), overrideDscp(0), res(0);
     bool gqosEnabled(false), useSetSockOpt(false);

     if (veData1.netw->SetSendTOS(channel, 13, useSetSockOpt) != 0)
     {
     __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
         "Failed to set TOS");
     return -1;
     }

     res = veData1.netw->GetSendTOS(channel, dscp, useSetSockOpt);
     if (res != 0 || dscp != 13 || useSetSockOpt != true)
     {
     __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
         "Failed to get TOS");
     return -1;
     } */

    /* if (veData1.rtp_rtcp->SetFECStatus(channel, 1) != 0)
     {
     __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
         "Failed to enable FEC");
     return -1;
     } */
#ifdef USE_SRTP
    VALIDATE_ENCRYPT_POINTER;
    bool useForRTCP = false;
    if (veData1.encrypt->EnableSRTPSend(
                    channel,CIPHER_AES_128_COUNTER_MODE,30,AUTH_HMAC_SHA1,
                    16,4, ENCRYPTION_AND_AUTHENTICATION,
                    (unsigned char*)nikkey, useForRTCP) != 0)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                "Failed to enable SRTP send");
        return -1;
    }
#endif

    VALIDATE_BASE_POINTER;
    int retVal = veData1.base->StartSend(channel);

    return retVal;
}

/////////////////////////////////////////////
// [Base] Stop listen
//
JNIEXPORT jint JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_StopListen(
        JNIEnv *,
        jobject,
        jint channel)
{
#ifdef USE_SRTP
    VALIDATE_ENCRYPT_POINTER;
    if (veData1.encrypt->DisableSRTPReceive(channel) != 0)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                "Failed to disable SRTP receive");
        return -1;
    }
#endif

    VALIDATE_BASE_POINTER;
    return veData1.base->StopReceive(channel);
}

/////////////////////////////////////////////
// [Base] Stop playout
//
JNIEXPORT jint JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_StopPlayout(
        JNIEnv *,
        jobject,
        jint channel)
{
    VALIDATE_BASE_POINTER;
    return veData1.base->StopPlayout(channel);
}

/////////////////////////////////////////////
// [Base] Stop send
//
JNIEXPORT jint JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_StopSend(
        JNIEnv *,
        jobject,
        jint channel)
{
    /* if (veData1.rtp_rtcp->SetFECStatus(channel, 0) != 0)
     {
     __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
         "Failed to disable FEC");
     return -1;
     } */

#ifdef USE_SRTP
    VALIDATE_ENCRYPT_POINTER;
    if (veData1.encrypt->DisableSRTPSend(channel) != 0)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                "Failed to disable SRTP send");
        return -1;
    }
#endif

    VALIDATE_BASE_POINTER;
    return veData1.base->StopSend(channel);
}

/////////////////////////////////////////////
// [codec] Number of codecs
//
JNIEXPORT jint JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_NumOfCodecs(
        JNIEnv *,
        jobject)
{
    //VALIDATE_CODEC_POINTER;
    //return veData1.codec->NumOfCodecs();
    return 0;
}

/////////////////////////////////////////////
// [codec] Set send codec
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_SetSendCodec(
        JNIEnv *,
        jobject,
        jint channel,
        jint index)
{
    /*VALIDATE_CODEC_POINTER;

    CodecInst codec;

    if (veData1.codec->GetCodec(index, codec) != 0)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "Failed to get codec");
        return -1;
    }

    return veData1.codec->SetSendCodec(channel, codec);*/
    return 0;
}

/////////////////////////////////////////////
// [codec] Set VAD status
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_SetVADStatus(
        JNIEnv *,
        jobject,
        jint channel,
        jboolean enable,
        jint mode)
{
    /*VALIDATE_CODEC_POINTER;

    VadModes VADmode = kVadConventional;

    switch (mode)
    {
        case 0:
            break; // already set
        case 1:
            VADmode = kVadAggressiveLow;
            break;
        case 2:
            VADmode = kVadAggressiveMid;
            break;
        case 3:
            VADmode = kVadAggressiveHigh;
            break;
        default:
            VADmode = (VadModes) 17; // force error
            break;
    }

    return veData1.codec->SetVADStatus(channel, enable, VADmode);*/
    return 0;
}

/////////////////////////////////////////////
// [apm] SetNSStatus
//
JNIEXPORT jint JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_SetNSStatus(
        JNIEnv *,
        jobject,
        jboolean enable,
        jint mode)
{
    /*VALIDATE_APM_POINTER;

    NsModes NSmode = kNsDefault;

    switch (mode)
    {
        case 0:
            NSmode = kNsUnchanged;
            break;
        case 1:
            break; // already set
        case 2:
            NSmode = kNsConference;
            break;
        case 3:
            NSmode = kNsLowSuppression;
            break;
        case 4:
            NSmode = kNsModerateSuppression;
            break;
        case 5:
            NSmode = kNsHighSuppression;
            break;
        case 6:
            NSmode = kNsVeryHighSuppression;
            break;
        default:
            NSmode = (NsModes) 17; // force error
            break;
    }

    return veData1.apm->SetNsStatus(enable, NSmode);*/
    return 0;
}

/////////////////////////////////////////////
// [apm] SetAGCStatus
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_SetAGCStatus(
        JNIEnv *,
        jobject,
        jboolean enable,
        jint mode)
{
    /*VALIDATE_APM_POINTER;

    AgcModes AGCmode = kAgcDefault;

    switch (mode)
    {
        case 0:
            AGCmode = kAgcUnchanged;
            break;
        case 1:
            break; // already set
        case 2:
            AGCmode = kAgcAdaptiveAnalog;
            break;
        case 3:
            AGCmode = kAgcAdaptiveDigital;
            break;
        case 4:
            AGCmode = kAgcFixedDigital;
            break;
        default:
            AGCmode = (AgcModes) 17; // force error
            break;
    }*/

    /* AgcConfig agcConfig;
     agcConfig.targetLeveldBOv = 3;
     agcConfig.digitalCompressionGaindB = 50;
     agcConfig.limiterEnable = 0;

     if (veData1.apm->SetAGCConfig(agcConfig) != 0)
     {
     __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
         "Failed to set AGC config");
     return -1;
     } */

    //return veData1.apm->SetAgcStatus(enable, AGCmode);
    return 0;
}

/////////////////////////////////////////////
// [apm] SetECStatus
//
JNIEXPORT jint JNICALL Java_org_webrtc_voiceengine_test_AndroidTest_SetECStatus(
        JNIEnv *,
        jobject,
        jboolean enable,
        jint mode)
{
    /*VALIDATE_APM_POINTER;

    EcModes ECmode = kEcDefault;

    switch (mode)
    {
        case 0:
            ECmode = kEcDefault;
            break;
        case 1:
            break; // already set
        case 2:
            ECmode = kEcConference;
            break;
        case 3:
            ECmode = kEcAec;
            break;
        case 4:
            ECmode = kEcAecm;
            break;
        default:
            ECmode = (EcModes) 17; // force error
            break;
    }

    return veData1.apm->SetEcStatus(enable, ECmode);*/
    return 0;
}

/////////////////////////////////////////////
// [File] Start play file locally
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_StartPlayingFileLocally(
        JNIEnv * env,
        jobject,
        jint channel,
        jstring fileName,
        jboolean loop)
{
    /*VALIDATE_FILE_POINTER;

    const char* fileNameNative = env->GetStringUTFChars(fileName, NULL);
    if (!fileNameNative)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "Could not get UTF string");
        return -1;
    }

    jint retVal = veData1.file->StartPlayingFileLocally(channel,
                                                        fileNameNative, loop);

    env->ReleaseStringUTFChars(fileName, fileNameNative);

    return retVal;*/
    return 0;
}

/////////////////////////////////////////////
// [File] Stop play file locally
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_StopPlayingFileLocally(
        JNIEnv *,
        jobject,
        jint channel)
{
    //VALIDATE_FILE_POINTER;
    //return veData1.file->StopPlayingFileLocally(channel);
    return 0;
}

/*
 * Class:     org_webrtc_voiceengine_test_AndroidTest
 * Method:    StartRecordingPlayout
 * Signature: (ILjava/lang/String;Z)I
 */
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_StartRecordingPlayout(
        JNIEnv * env,
        jobject,
        jint channel,
        jstring fileName,
        jboolean)
{
    /*VALIDATE_FILE_POINTER;

    const char* fileNameNative = env->GetStringUTFChars(fileName, NULL);
    if (!fileNameNative)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "Could not get UTF string");
        return -1;
    }

    jint retVal = veData1.file->StartRecordingPlayout(channel, fileNameNative,
                                                      0);

    env->ReleaseStringUTFChars(fileName, fileNameNative);

    return retVal;*/
    return 0;
}

/////////////////////////////////////////////
// [File] Stop Recording Playout
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_StopRecordingPlayout(
        JNIEnv *,
        jobject,
        jint channel)
{
    //VALIDATE_FILE_POINTER;
    //return veData1.file->StopRecordingPlayout(channel);
    return 0;
}

/////////////////////////////////////////////
// [File] Start playing file as microphone
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_StartPlayingFileAsMicrophone(
        JNIEnv *env,
        jobject,
        jint channel,
        jstring fileName,
        jboolean loop)
{
    /*VALIDATE_FILE_POINTER;

    const char* fileNameNative = env->GetStringUTFChars(fileName, NULL);
    if (!fileNameNative)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "Could not get UTF string");
        return -1;
    }

    jint retVal = veData1.file->StartPlayingFileAsMicrophone(channel,
                                                             fileNameNative,
                                                             loop);

    env->ReleaseStringUTFChars(fileName, fileNameNative);

    return retVal;*/
    return 0;
}

/////////////////////////////////////////////
// [File] Stop playing file as microphone
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_StopPlayingFileAsMicrophone(
        JNIEnv *,
        jobject,
        jint channel)
{
    //VALIDATE_FILE_POINTER;
    //return veData1.file->StopPlayingFileAsMicrophone(channel);
    return 0;
}

/////////////////////////////////////////////
// [Volume] Set speaker volume
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_SetSpeakerVolume(
        JNIEnv *,
        jobject,
        jint level)
{
    /*VALIDATE_VOLUME_POINTER;
    if (veData1.volume->SetSpeakerVolume(level) != 0)
    {
        return -1;
    }

    unsigned int storedVolume = 0;
    if (veData1.volume->GetSpeakerVolume(storedVolume) != 0)
    {
        return -1;
    }

    if (storedVolume != level)
    {
        return -1;
    }*/

    return 0;
}

/////////////////////////////////////////////
// [Hardware] Set loudspeaker status
//
JNIEXPORT jint JNICALL
Java_org_webrtc_voiceengine_test_AndroidTest_SetLoudspeakerStatus(
        JNIEnv *,
        jobject,
        jboolean enable)
{
    /*VALIDATE_HARDWARE_POINTER;
    if (veData1.hardware->SetLoudspeakerStatus(enable) != 0)
    {
        return -1;
    }

    VALIDATE_RTP_RTCP_POINTER;

     if (veData1.rtp_rtcp->SetFECStatus(0, enable, -1) != 0)
     {
     __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
         "Could not set FEC");
     return -1;
     }
     else if(enable)
     {
     __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
         "Could enable FEC");
     }
     else
     {
     __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
         "Could disable FEC");
     }*/

    return 0;
}

//////////////////////////////////////////////////////////////////
// "Local" functions (i.e. not Java accessible)
//////////////////////////////////////////////////////////////////

/////////////////////////////////////////////
// Get all sub-APIs
//
bool GetSubApis(VoiceEngineData &veData)
{
    bool getOK = true;

    // Base
    veData.base = VoEBase::GetInterface(veData.ve);
    if (!veData.base)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "Get base sub-API failed");
        getOK = false;
    }

    return getOK;
}

/////////////////////////////////////////////
// Release all sub-APIs
//
bool ReleaseSubApis(VoiceEngineData &veData)
{
    bool releaseOK = true;

    // Base
    if (veData.base)
    {
        if (0 != veData.base->Release())
        {
            __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                                "Release base sub-API failed");
            releaseOK = false;
        }
        else
        {
            veData.base = NULL;
        }
    }

    return releaseOK;
}

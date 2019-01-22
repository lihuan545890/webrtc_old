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

#include "com_kedacom_truetouch_mtc_MtcLib.h"
#include "audio_android_device.h"
#include "voe_base.h"
#include "voe_audio_processing.h"

#define WEBRTC_LOG_TAG "*WEBRTCN*" // As in WEBRTC Native...
#define VALIDATE_BASE_POINTER \
    if (!veData.base) \
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
static VoiceEngineData veData;

// "Local" functions (i.e. not Java accessible)
static bool GetSubApis(VoiceEngineData &veData);
static bool ReleaseSubApis(VoiceEngineData &veData);


AudioAndroidDevice::AudioAndroidDevice()
{
	return;
}

AudioAndroidDevice::~AudioAndroidDevice()
{
    return;
}


//////////////////////////////////////////////////////////////////
// VoiceEngine API wrapper functions
//////////////////////////////////////////////////////////////////

/////////////////////////////////////////////
// Create VoiceEngine instance
//
JNIEXPORT jboolean JNICALL Java_com_kedacom_truetouch_mtc_MtcLib_Create(
        JNIEnv *env,
        jobject context)
{
    // Check if already created
    if (veData.ve)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "VoE already created");
        return false;
    }
    
    memset(&veData, 0, sizeof(veData));

	env->GetJavaVM(&veData.jvm);

    // Set instance independent Java objects
    VoiceEngine::SetAndroidObjects(veData.jvm, env, context);

    // Create
    veData.ve = VoiceEngine::Create();
    if (!veData.ve)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "Create VoE failed");
        return false;
    }

    // Get sub-APIs
    if (!GetSubApis(veData))
    {
        // If not OK, release all sub-APIs and delete VoE
        ReleaseSubApis(veData);
        if (!VoiceEngine::Delete(veData.ve))
        {
            __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                                "Delete VoE failed");
        }
        return false;
    }
    
    return true;
}

/////////////////////////////////////////////
// Delete VoiceEngine instance
//
JNIEXPORT jboolean JNICALL Java_com_kedacom_truetouch_mtc_MtcLib_Delete(
        JNIEnv *,
        jobject)
{
    // Check if exists
    if (!veData.ve)
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "VoE does not exist");
        return false;
    }

    // Release sub-APIs
    ReleaseSubApis(veData);

    // Delete
    if (!VoiceEngine::Delete(veData.ve))
    {
        __android_log_write(ANDROID_LOG_ERROR, WEBRTC_LOG_TAG,
                            "Delete VoE failed");
        return false;
    }

    veData.ve = NULL;

    // Clear instance independent Java objects
    VoiceEngine::SetAndroidObjects(NULL, NULL, NULL);

    return true;
}

/////////////////////////////////////////////
// [Base] Initialize VoiceEngine
//
int AudioAndroidDevice::Init()
{
    VALIDATE_BASE_POINTER;
    int retVal = 0;
    retVal = veData.base->Init(NULL, NULL);
    return retVal;
}

/////////////////////////////////////////////
// [Base] Terminate VoiceEngine
//
int AudioAndroidDevice::Terminate()
{
    VALIDATE_BASE_POINTER;

    int retVal = veData.base->Terminate();

    return retVal;
}

/////////////////////////////////////////////
// [Base] Start playout
//
int AudioAndroidDevice::StartPlayout()
{
    VALIDATE_BASE_POINTER;
    int retVal = veData.base->StartPlayout(0);

    return retVal;
}

/////////////////////////////////////////////
// [Base] Start send
//
int AudioAndroidDevice::StartSend()
{
    VALIDATE_BASE_POINTER;
    int retVal = veData.base->StartSend(0);

    return retVal;
}

/////////////////////////////////////////////
// [Base] Stop playout
//
int AudioAndroidDevice::StopPlayout()
{
    VALIDATE_BASE_POINTER;
    int retVal = veData.base->StopPlayout(0);
    return retVal;
}

/////////////////////////////////////////////
// [Base] Stop send
//
int AudioAndroidDevice::StopSend()
{
    VALIDATE_BASE_POINTER;
    int retVal = veData.base->StopSend(0);
    return retVal;
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

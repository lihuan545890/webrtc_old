# Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
#
# Use of this source code is governed by a BSD-style license
# that can be found in the LICENSE file in the root of the source
# tree. An additional intellectual property rights grant can be found
# in the file PATENTS.  All contributing project authors may
# be found in the AUTHORS file in the root of the source tree.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(LOCAL_PATH)/../../../../../../android-webrtc.mk

LOCAL_ARM_MODE := arm
LOCAL_MODULE := libvoice_engine
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := \
    audio_android_device.cc \
    voe_base_impl.cc \
    voice_engine_impl.cc \
    statistics.cc \
    shared_data.cc

# Flags passed to both C and C++ files.
LOCAL_CFLAGS := \
    '-DWEBRTC_TARGET_PC' \
    '-DWEBRTC_ANDROID'

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../../../../../../webrtc \
    $(LOCAL_PATH)/../../../../../../webrtc/system_wrappers/interface \
    $(LOCAL_PATH)/../../../../../../webrtc/voice_engine/include

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libdl \
    libstlport

include $(BUILD_STATIC_LIBRARY)

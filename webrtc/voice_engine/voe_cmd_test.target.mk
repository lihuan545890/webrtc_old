# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := voe_cmd_test
DEFS_Debug := \
	'-DWEBRTC_SVNREVISION="Unavailable(issue687)"' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_PEPPER_THREADING' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DWEBRTC_LOGGING' \
	'-DWEBRTC_ARCH_ARM' \
	'-DWEBRTC_ARCH_ARM_V7' \
	'-DWEBRTC_DETECT_ARM_NEON' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_ANDROID' \
	'-DWEBRTC_CLOCK_TYPE_REALTIME' \
	'-DWEBRTC_THREAD_RR' \
	'-DUNIT_TEST' \
	'-DGTEST_HAS_RTTI=0' \
	'-DGTEST_USE_OWN_TR1_TUPLE=1' \
	'-DGTEST_HAS_TR1_TUPLE=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DHAVE_SYS_UIO_H' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wextra \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fno-builtin-cos \
	-fno-builtin-sin \
	-fno-builtin-cosf \
	-fno-builtin-sinf \
	-mthumb \
	-march=armv7-a \
	-mtune=cortex-a8 \
	-mfloat-abi=softfp \
	-mfpu=vfpv3-d16 \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-mthumb-interwork \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	--sysroot=/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//platforms/android-9/arch-arm \
	-I/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//sources/cxx-stl/stlport/stlport \
	-I/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//sources/cxx-stl/gnu-libstdc++/4.6/include \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Woverloaded-virtual \
	-Wno-abi

INCS_Debug := \
	-Iwebrtc \
	-I. \
	-I. \
	-Iwebrtc/test \
	-Itesting/gtest/include \
	-Iwebrtc/voice_engine/include \
	-Iwebrtc/system_wrappers/interface

DEFS_Release := \
	'-DWEBRTC_SVNREVISION="Unavailable(issue687)"' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_PEPPER_THREADING' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DWEBRTC_LOGGING' \
	'-DWEBRTC_ARCH_ARM' \
	'-DWEBRTC_ARCH_ARM_V7' \
	'-DWEBRTC_DETECT_ARM_NEON' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_ANDROID' \
	'-DWEBRTC_CLOCK_TYPE_REALTIME' \
	'-DWEBRTC_THREAD_RR' \
	'-DUNIT_TEST' \
	'-DGTEST_HAS_RTTI=0' \
	'-DGTEST_USE_OWN_TR1_TUPLE=1' \
	'-DGTEST_HAS_TR1_TUPLE=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DHAVE_SYS_UIO_H' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'

# Flags passed to all source files.
CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wextra \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fno-builtin-cos \
	-fno-builtin-sin \
	-fno-builtin-cosf \
	-fno-builtin-sinf \
	-mthumb \
	-march=armv7-a \
	-mtune=cortex-a8 \
	-mfloat-abi=softfp \
	-mfpu=vfpv3-d16 \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-mthumb-interwork \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	--sysroot=/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//platforms/android-9/arch-arm \
	-I/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//sources/cxx-stl/stlport/stlport \
	-I/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//sources/cxx-stl/gnu-libstdc++/4.6/include \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Woverloaded-virtual \
	-Wno-abi

INCS_Release := \
	-Iwebrtc \
	-I. \
	-I. \
	-Iwebrtc/test \
	-Itesting/gtest/include \
	-Iwebrtc/voice_engine/include \
	-Iwebrtc/system_wrappers/interface

OBJS := \
	$(obj).target/$(TARGET)/webrtc/voice_engine/test/cmd_test/voe_cmd_test.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/libtest_support.a $(builddir)/libgtest.a $(builddir)/libvoice_engine_core.a $(builddir)/libsystem_wrappers.a $(builddir)/libchannel_transport.a $(obj).target/testing/gtest_prod.stamp $(builddir)/libgmock.a $(builddir)/libcpu_features_android.a $(builddir)/libresampler.a $(builddir)/libsignal_processing.a $(builddir)/libsignal_processing_neon.a $(builddir)/libaudio_coding_module.a $(builddir)/libCNG.a $(builddir)/libG711.a $(builddir)/libG722.a $(builddir)/libiLBC.a $(builddir)/libiSAC.a $(builddir)/libiSACFix.a $(builddir)/libisac_neon.a $(builddir)/libPCM16B.a $(builddir)/libNetEq.a $(builddir)/libvad.a $(builddir)/libwebrtc_opus.a $(builddir)/libopus.a $(builddir)/libaudio_conference_mixer.a $(builddir)/libaudio_processing.a $(builddir)/libaudioproc_debug_proto.a $(builddir)/libprotobuf_lite.a $(builddir)/libaudio_processing_neon.a $(obj).target/webrtc/modules/audio_processing_offsets.stamp $(builddir)/libwebrtc_utility.a $(builddir)/libwebrtc_video_coding.a $(builddir)/libwebrtc_i420.a $(builddir)/libcommon_video.a $(builddir)/libjpeg_turbo.a $(builddir)/libyuv.a $(builddir)/libvideo_coding_utility.a $(builddir)/libwebrtc_vp8.a $(builddir)/libvpx.a $(obj).target/third_party/libvpx/gen_asm_offsets_vp8.stamp $(builddir)/libvpx_asm_offsets.a $(obj).target/third_party/libvpx/gen_asm_offsets_vpx_scale.stamp $(builddir)/libvpx_asm_offsets_vpx_scale.a $(obj).target/third_party/libvpx/gen_asm_offsets_vp9.stamp $(builddir)/libvpx_asm_offsets_vp9.a $(builddir)/libaudio_device.a $(builddir)/libmedia_file.a $(builddir)/librtp_rtcp.a $(builddir)/libremote_bitrate_estimator.a $(builddir)/libpaced_sender.a $(builddir)/libudp_transport.a $(obj).target/webrtc/test/libtest_support.a $(obj).target/testing/libgtest.a $(obj).target/webrtc/voice_engine/libvoice_engine_core.a $(obj).target/webrtc/system_wrappers/source/libsystem_wrappers.a $(obj).target/webrtc/test/libchannel_transport.a $(obj).target/testing/libgmock.a $(obj).target/webrtc/system_wrappers/source/libcpu_features_android.a $(obj).target/webrtc/common_audio/libresampler.a $(obj).target/webrtc/common_audio/libsignal_processing.a $(obj).target/webrtc/common_audio/libsignal_processing_neon.a $(obj).target/webrtc/modules/libaudio_coding_module.a $(obj).target/webrtc/modules/libCNG.a $(obj).target/webrtc/modules/libG711.a $(obj).target/webrtc/modules/libG722.a $(obj).target/webrtc/modules/libiLBC.a $(obj).target/webrtc/modules/libiSAC.a $(obj).target/webrtc/modules/libiSACFix.a $(obj).target/webrtc/modules/libisac_neon.a $(obj).target/webrtc/modules/libPCM16B.a $(obj).target/webrtc/modules/libNetEq.a $(obj).target/webrtc/common_audio/libvad.a $(obj).target/webrtc/modules/libwebrtc_opus.a $(obj).target/third_party/opus/libopus.a $(obj).target/webrtc/modules/libaudio_conference_mixer.a $(obj).target/webrtc/modules/libaudio_processing.a $(obj).target/webrtc/modules/libaudioproc_debug_proto.a $(obj).target/third_party/protobuf/libprotobuf_lite.a $(obj).target/webrtc/modules/libaudio_processing_neon.a $(obj).target/webrtc/modules/libwebrtc_utility.a $(obj).target/webrtc/modules/libwebrtc_video_coding.a $(obj).target/webrtc/modules/libwebrtc_i420.a $(obj).target/webrtc/common_video/libcommon_video.a $(obj).target/third_party/libjpeg_turbo/libjpeg_turbo.a $(obj).target/third_party/libyuv/libyuv.a $(obj).target/webrtc/modules/video_coding/utility/libvideo_coding_utility.a $(obj).target/webrtc/modules/video_coding/codecs/vp8/libwebrtc_vp8.a $(obj).target/third_party/libvpx/libvpx.a $(obj).target/third_party/libvpx/libvpx_asm_offsets.a $(obj).target/third_party/libvpx/libvpx_asm_offsets_vpx_scale.a $(obj).target/third_party/libvpx/libvpx_asm_offsets_vp9.a $(obj).target/webrtc/modules/libaudio_device.a $(obj).target/webrtc/modules/libmedia_file.a $(obj).target/webrtc/modules/librtp_rtcp.a $(obj).target/webrtc/modules/libremote_bitrate_estimator.a $(obj).target/webrtc/modules/libpaced_sender.a $(obj).target/webrtc/modules/libudp_transport.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	--sysroot=/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//platforms/android-9/arch-arm \
	-Wl,--icf=safe \
	-L/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//sources/cxx-stl/stlport/libs/armeabi-v7a \
	-L/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//sources/cxx-stl/gnu-libstdc++/4.6/libs/armeabi-v7a \
	-Bdynamic \
	-Wl,-dynamic-linker,/system/bin/linker \
	-Wl,--gc-sections \
	-Wl,-z,nocopyreloc \
	/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//platforms/android-9/arch-arm/usr/lib/crtbegin_dynamic.o \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections

LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	--sysroot=/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//platforms/android-9/arch-arm \
	-Wl,--icf=safe \
	-L/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//sources/cxx-stl/stlport/libs/armeabi-v7a \
	-L/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//sources/cxx-stl/gnu-libstdc++/4.6/libs/armeabi-v7a \
	-Bdynamic \
	-Wl,-dynamic-linker,/system/bin/linker \
	-Wl,--gc-sections \
	-Wl,-z,nocopyreloc \
	/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//platforms/android-9/arch-arm/usr/lib/crtbegin_dynamic.o \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections

LIBS := \
	 \
	-llog \
	-lOpenSLES \
	-lstlport_static \
	/home/ubuntu/workspace/trunk/third_party/android_tools/ndk/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-i686/bin/../lib/gcc/arm-linux-androideabi/4.6.x-google/libgcc.a \
	-lc \
	-ldl \
	-lstdc++ \
	-lm \
	/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//platforms/android-9/arch-arm/usr/lib/crtend_android.o

$(builddir)/voe_cmd_test: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/voe_cmd_test: LIBS := $(LIBS)
$(builddir)/voe_cmd_test: LD_INPUTS := $(OBJS) $(obj).target/webrtc/test/libtest_support.a $(obj).target/testing/libgtest.a $(obj).target/webrtc/voice_engine/libvoice_engine_core.a $(obj).target/webrtc/system_wrappers/source/libsystem_wrappers.a $(obj).target/webrtc/test/libchannel_transport.a $(obj).target/testing/libgmock.a $(obj).target/webrtc/system_wrappers/source/libcpu_features_android.a $(obj).target/webrtc/common_audio/libresampler.a $(obj).target/webrtc/common_audio/libsignal_processing.a $(obj).target/webrtc/common_audio/libsignal_processing_neon.a $(obj).target/webrtc/modules/libaudio_coding_module.a $(obj).target/webrtc/modules/libCNG.a $(obj).target/webrtc/modules/libG711.a $(obj).target/webrtc/modules/libG722.a $(obj).target/webrtc/modules/libiLBC.a $(obj).target/webrtc/modules/libiSAC.a $(obj).target/webrtc/modules/libiSACFix.a $(obj).target/webrtc/modules/libisac_neon.a $(obj).target/webrtc/modules/libPCM16B.a $(obj).target/webrtc/modules/libNetEq.a $(obj).target/webrtc/common_audio/libvad.a $(obj).target/webrtc/modules/libwebrtc_opus.a $(obj).target/third_party/opus/libopus.a $(obj).target/webrtc/modules/libaudio_conference_mixer.a $(obj).target/webrtc/modules/libaudio_processing.a $(obj).target/webrtc/modules/libaudioproc_debug_proto.a $(obj).target/third_party/protobuf/libprotobuf_lite.a $(obj).target/webrtc/modules/libaudio_processing_neon.a $(obj).target/webrtc/modules/libwebrtc_utility.a $(obj).target/webrtc/modules/libwebrtc_video_coding.a $(obj).target/webrtc/modules/libwebrtc_i420.a $(obj).target/webrtc/common_video/libcommon_video.a $(obj).target/third_party/libjpeg_turbo/libjpeg_turbo.a $(obj).target/third_party/libyuv/libyuv.a $(obj).target/webrtc/modules/video_coding/utility/libvideo_coding_utility.a $(obj).target/webrtc/modules/video_coding/codecs/vp8/libwebrtc_vp8.a $(obj).target/third_party/libvpx/libvpx.a $(obj).target/third_party/libvpx/libvpx_asm_offsets.a $(obj).target/third_party/libvpx/libvpx_asm_offsets_vpx_scale.a $(obj).target/third_party/libvpx/libvpx_asm_offsets_vp9.a $(obj).target/webrtc/modules/libaudio_device.a $(obj).target/webrtc/modules/libmedia_file.a $(obj).target/webrtc/modules/librtp_rtcp.a $(obj).target/webrtc/modules/libremote_bitrate_estimator.a $(obj).target/webrtc/modules/libpaced_sender.a $(obj).target/webrtc/modules/libudp_transport.a
$(builddir)/voe_cmd_test: TOOLSET := $(TOOLSET)
$(builddir)/voe_cmd_test: $(OBJS) $(obj).target/webrtc/test/libtest_support.a $(obj).target/testing/libgtest.a $(obj).target/webrtc/voice_engine/libvoice_engine_core.a $(obj).target/webrtc/system_wrappers/source/libsystem_wrappers.a $(obj).target/webrtc/test/libchannel_transport.a $(obj).target/testing/libgmock.a $(obj).target/webrtc/system_wrappers/source/libcpu_features_android.a $(obj).target/webrtc/common_audio/libresampler.a $(obj).target/webrtc/common_audio/libsignal_processing.a $(obj).target/webrtc/common_audio/libsignal_processing_neon.a $(obj).target/webrtc/modules/libaudio_coding_module.a $(obj).target/webrtc/modules/libCNG.a $(obj).target/webrtc/modules/libG711.a $(obj).target/webrtc/modules/libG722.a $(obj).target/webrtc/modules/libiLBC.a $(obj).target/webrtc/modules/libiSAC.a $(obj).target/webrtc/modules/libiSACFix.a $(obj).target/webrtc/modules/libisac_neon.a $(obj).target/webrtc/modules/libPCM16B.a $(obj).target/webrtc/modules/libNetEq.a $(obj).target/webrtc/common_audio/libvad.a $(obj).target/webrtc/modules/libwebrtc_opus.a $(obj).target/third_party/opus/libopus.a $(obj).target/webrtc/modules/libaudio_conference_mixer.a $(obj).target/webrtc/modules/libaudio_processing.a $(obj).target/webrtc/modules/libaudioproc_debug_proto.a $(obj).target/third_party/protobuf/libprotobuf_lite.a $(obj).target/webrtc/modules/libaudio_processing_neon.a $(obj).target/webrtc/modules/libwebrtc_utility.a $(obj).target/webrtc/modules/libwebrtc_video_coding.a $(obj).target/webrtc/modules/libwebrtc_i420.a $(obj).target/webrtc/common_video/libcommon_video.a $(obj).target/third_party/libjpeg_turbo/libjpeg_turbo.a $(obj).target/third_party/libyuv/libyuv.a $(obj).target/webrtc/modules/video_coding/utility/libvideo_coding_utility.a $(obj).target/webrtc/modules/video_coding/codecs/vp8/libwebrtc_vp8.a $(obj).target/third_party/libvpx/libvpx.a $(obj).target/third_party/libvpx/libvpx_asm_offsets.a $(obj).target/third_party/libvpx/libvpx_asm_offsets_vpx_scale.a $(obj).target/third_party/libvpx/libvpx_asm_offsets_vp9.a $(obj).target/webrtc/modules/libaudio_device.a $(obj).target/webrtc/modules/libmedia_file.a $(obj).target/webrtc/modules/librtp_rtcp.a $(obj).target/webrtc/modules/libremote_bitrate_estimator.a $(obj).target/webrtc/modules/libpaced_sender.a $(obj).target/webrtc/modules/libudp_transport.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/voe_cmd_test
# Add target alias
.PHONY: voe_cmd_test
voe_cmd_test: $(builddir)/voe_cmd_test

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/voe_cmd_test

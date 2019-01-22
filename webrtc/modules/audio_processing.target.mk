# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := audio_processing
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
	'-DWEBRTC_AUDIOPROC_DEBUG_DUMP' \
	'-DWEBRTC_NS_FIXED' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
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
	-Iwebrtc/modules/interface \
	-Iwebrtc/modules/audio_processing/aec/include \
	-Iwebrtc/modules/audio_processing/aecm/include \
	-Iwebrtc/modules/audio_processing/agc/include \
	-Iwebrtc/modules/audio_processing/include \
	-Iwebrtc/modules/audio_processing/ns/include \
	-Iwebrtc/modules/audio_processing/utility \
	-Iwebrtc/common_audio/signal_processing/include \
	-Iwebrtc/common_audio/vad/include \
	-Iwebrtc/system_wrappers/interface \
	-I$(obj)/gen/protoc_out \
	-Ithird_party/protobuf \
	-Ithird_party/protobuf/src

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
	'-DWEBRTC_AUDIOPROC_DEBUG_DUMP' \
	'-DWEBRTC_NS_FIXED' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
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
	-Iwebrtc/modules/interface \
	-Iwebrtc/modules/audio_processing/aec/include \
	-Iwebrtc/modules/audio_processing/aecm/include \
	-Iwebrtc/modules/audio_processing/agc/include \
	-Iwebrtc/modules/audio_processing/include \
	-Iwebrtc/modules/audio_processing/ns/include \
	-Iwebrtc/modules/audio_processing/utility \
	-Iwebrtc/common_audio/signal_processing/include \
	-Iwebrtc/common_audio/vad/include \
	-Iwebrtc/system_wrappers/interface \
	-I$(obj)/gen/protoc_out \
	-Ithird_party/protobuf \
	-Ithird_party/protobuf/src

OBJS := \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/aec/echo_cancellation.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/aec/aec_core.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/aec/aec_rdft.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/aec/aec_resampler.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/aecm/echo_control_mobile.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/aecm/aecm_core.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/agc/analog_agc.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/agc/digital_agc.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/audio_buffer.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/audio_processing_impl.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/echo_cancellation_impl.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/echo_control_mobile_impl.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/gain_control_impl.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/high_pass_filter_impl.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/level_estimator_impl.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/noise_suppression_impl.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/splitting_filter.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/processing_component.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/utility/delay_estimator.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/utility/delay_estimator_wrapper.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/utility/fft4g.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/utility/ring_buffer.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/voice_detection_impl.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/ns/noise_suppression_x.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_processing/ns/nsx_core.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/libaudioproc_debug_proto.a $(obj).target/webrtc/modules/libaudioproc_debug_proto.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

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
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections

LIBS := \
	 \
	-lstlport_static \
	/home/ubuntu/workspace/trunk/third_party/android_tools/ndk/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-i686/bin/../lib/gcc/arm-linux-androideabi/4.6.x-google/libgcc.a \
	-lc \
	-ldl \
	-lstdc++ \
	-lm

$(obj).target/webrtc/modules/libaudio_processing.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/webrtc/modules/libaudio_processing.a: LIBS := $(LIBS)
$(obj).target/webrtc/modules/libaudio_processing.a: TOOLSET := $(TOOLSET)
$(obj).target/webrtc/modules/libaudio_processing.a: $(OBJS) $(obj).target/webrtc/modules/libaudioproc_debug_proto.a FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/webrtc/modules/libaudio_processing.a
# Add target alias
.PHONY: audio_processing
audio_processing: $(obj).target/webrtc/modules/libaudio_processing.a

# Add target alias to "all" target.
.PHONY: all
all: audio_processing

# Add target alias
.PHONY: audio_processing
audio_processing: $(builddir)/libaudio_processing.a

# Copy this to the static library output path.
$(builddir)/libaudio_processing.a: TOOLSET := $(TOOLSET)
$(builddir)/libaudio_processing.a: $(obj).target/webrtc/modules/libaudio_processing.a FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/libaudio_processing.a
# Short alias for building this static library.
.PHONY: libaudio_processing.a
libaudio_processing.a: $(obj).target/webrtc/modules/libaudio_processing.a $(builddir)/libaudio_processing.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/libaudio_processing.a


# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := resampler_unittests
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
	-Iwebrtc/common_audio/resampler/include \
	-Itesting/gmock/include \
	-Itesting/gtest/include

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
	-Iwebrtc/common_audio/resampler/include \
	-Itesting/gmock/include \
	-Itesting/gtest/include

OBJS := \
	$(obj).target/$(TARGET)/webrtc/common_audio/resampler/resampler_unittest.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/resampler/sinc_resampler_unittest.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/libresampler.a $(builddir)/libtest_support_main.a $(builddir)/libgmock.a $(builddir)/libgtest.a $(builddir)/libsignal_processing.a $(builddir)/libsystem_wrappers.a $(builddir)/libcpu_features_android.a $(builddir)/libsignal_processing_neon.a $(builddir)/libtest_support.a $(obj).target/testing/gtest_prod.stamp $(obj).target/webrtc/common_audio/libresampler.a $(obj).target/webrtc/test/libtest_support_main.a $(obj).target/testing/libgmock.a $(obj).target/testing/libgtest.a $(obj).target/webrtc/common_audio/libsignal_processing.a $(obj).target/webrtc/system_wrappers/source/libsystem_wrappers.a $(obj).target/webrtc/system_wrappers/source/libcpu_features_android.a $(obj).target/webrtc/common_audio/libsignal_processing_neon.a $(obj).target/webrtc/test/libtest_support.a

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
	-lstlport_static \
	/home/ubuntu/workspace/trunk/third_party/android_tools/ndk/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-i686/bin/../lib/gcc/arm-linux-androideabi/4.6.x-google/libgcc.a \
	-lc \
	-ldl \
	-lstdc++ \
	-lm \
	/home/ubuntu/workspace/trunk/third_party/android_tools/ndk//platforms/android-9/arch-arm/usr/lib/crtend_android.o

$(builddir)/resampler_unittests: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/resampler_unittests: LIBS := $(LIBS)
$(builddir)/resampler_unittests: LD_INPUTS := $(OBJS) $(obj).target/webrtc/common_audio/libresampler.a $(obj).target/webrtc/test/libtest_support_main.a $(obj).target/testing/libgmock.a $(obj).target/testing/libgtest.a $(obj).target/webrtc/common_audio/libsignal_processing.a $(obj).target/webrtc/system_wrappers/source/libsystem_wrappers.a $(obj).target/webrtc/system_wrappers/source/libcpu_features_android.a $(obj).target/webrtc/common_audio/libsignal_processing_neon.a $(obj).target/webrtc/test/libtest_support.a
$(builddir)/resampler_unittests: TOOLSET := $(TOOLSET)
$(builddir)/resampler_unittests: $(OBJS) $(obj).target/webrtc/common_audio/libresampler.a $(obj).target/webrtc/test/libtest_support_main.a $(obj).target/testing/libgmock.a $(obj).target/testing/libgtest.a $(obj).target/webrtc/common_audio/libsignal_processing.a $(obj).target/webrtc/system_wrappers/source/libsystem_wrappers.a $(obj).target/webrtc/system_wrappers/source/libcpu_features_android.a $(obj).target/webrtc/common_audio/libsignal_processing_neon.a $(obj).target/webrtc/test/libtest_support.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/resampler_unittests
# Add target alias
.PHONY: resampler_unittests
resampler_unittests: $(builddir)/resampler_unittests

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/resampler_unittests


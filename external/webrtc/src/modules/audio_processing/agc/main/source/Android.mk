# This file is generated by gyp; do not edit. This means you!

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := libwebrtc_agc
LOCAL_MODULE_TAGS := optional
LOCAL_GENERATED_SOURCES :=
LOCAL_SRC_FILES := analog_agc.c \
    digital_agc.c

# Flags passed to both C and C++ files.
MY_CFLAGS :=  
MY_CFLAGS_C :=
MY_DEFS := '-DNO_TCMALLOC' \
    '-DNO_HEAPCHECKER' \
    '-DWEBRTC_TARGET_PC' \
    '-DWEBRTC_LINUX' \
    '-DWEBRTC_THREAD_RR'
ifeq ($(TARGET_ARCH),arm) 
MY_DEFS += \
    '-DANDROID' 

ifneq ($(TARGET_ARCH_VARIANT),armv5te)
ifneq ($(TARGET_ARCH_VARIANT),armv5te-vfp)
MY_DEFS += \
    '-DWEBRTC_ANDROID'
endif
endif
endif

LOCAL_CFLAGS := $(MY_CFLAGS_C) $(MY_CFLAGS) $(MY_DEFS)

# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../../.. \
    $(LOCAL_PATH)/../interface \
    $(LOCAL_PATH)/../../../../../common_audio/signal_processing_library/main/interface 

# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS := 
LOCAL_LDFLAGS :=

LOCAL_STATIC_LIBRARIES :=
# Duplicate the static libraries to fix circular references
LOCAL_STATIC_LIBRARIES += $(LOCAL_STATIC_LIBRARIES)

LOCAL_SHARED_LIBRARIES := libcutils \
    libdl \
    libstlport
LOCAL_ADDITIONAL_DEPENDENCIES :=

include external/stlport/libstlport.mk
include $(BUILD_STATIC_LIBRARY)

LOCAL_PATH := $(call my-dir)
multilib := both

ifeq ($(wildcard vendor/amlogic/tv/tvserver/Android.mk),vendor/amlogic/tv/tvserver/Android.mk)
$(info "have tvserver source code")
else
$(info "no tvserver source code, add binary lib")
include $(CLEAR_VARS)
LOCAL_MODULE := libtv
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := $(multilib)
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64
LOCAL_SRC_FILES_64 := 64bit/lib64/libtv.so
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib
LOCAL_SRC_FILES_32 := 64bit/lib/libtv.so
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES := 32bit/libtv.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libtv_linker
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := $(multilib)
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64
LOCAL_SRC_FILES_64 := 64bit/lib64/libtv_linker.so
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib
LOCAL_SRC_FILES_32 := 64bit/lib/libtv_linker.so
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES := 32bit/libtv_linker.so
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := tvserver
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
ifdef TARGET_2ND_ARCH
LOCAL_SRC_FILES := 64bit/tvserver
else
LOCAL_SRC_FILES := 32bit/tvserver
endif
include $(BUILD_PREBUILT)

endif

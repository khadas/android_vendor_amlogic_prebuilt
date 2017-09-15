#####################################################
# amlogic video decoder firmware bin
####################################################

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := tee_preload_fw
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
LOCAL_SRC_FILES :=$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := 526fc4fc-7ee6-4a12-96e3-83da9565bce8
LOCAL_MULTILIB := 32
LOCAL_MODULE_SUFFIX := .ta
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib/teetz
LOCAL_SRC_FILES_arm := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_STRIP_MODULE := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := libtee_load_video_fw
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64/
LOCAL_SRC_FILES_arm64 := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_STRIP_MODULE := false
include $(BUILD_PREBUILT)


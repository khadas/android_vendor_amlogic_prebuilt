LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:= Happycast_Tv
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := platform
LOCAL_SRC_FILES := Happycast_Tv.apk
LOCAL_PREBUILT_JNI_LIBS := \
    lib/armeabi-v7a/libBugly.so \
    lib/armeabi-v7a/libhisivideo19.so \
    lib/armeabi-v7a/libhisivideo.so \
    lib/armeabi-v7a/libhpplaygateip.so \
    lib/armeabi-v7a/libhpplaymirror.so \
    lib/armeabi-v7a/libhpplayvideo19.so \
    lib/armeabi-v7a/liblbffmpeg.so \
    lib/armeabi-v7a/liblbsdl.so \
    lib/armeabi-v7a/libMtaNativeCrash.so \
    lib/armeabi-v7a/libamlogiccast.so \
    lib/armeabi-v7a/libdownloadinstall.so \
    lib/armeabi-v7a/libhisivideo_3798m.so \
    lib/armeabi-v7a/libhpplayaudio.so \
    lib/armeabi-v7a/libhpplaymdns.so \
    lib/armeabi-v7a/libhpplaysmdns.so \
    lib/armeabi-v7a/libhpplayvideo.so \
    lib/armeabi-v7a/liblbplayer.so \
    lib/armeabi-v7a/liblebodlna-jni.so \
    lib/armeabi-v7a/libndkbitmap.so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

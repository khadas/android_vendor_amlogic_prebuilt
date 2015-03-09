# Copyright (C) 2012 Amlogic Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifeq (,$(wildcard hardware/amlogic/omx))
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PREBUILT_LIBS := libomx_av_core_alt.so \
                       libOmxCore.so \
                       libOmxVideo.so \
                       libthreadworker_alt.so \
                       libdatachunkqueue_alt.so \
                       libOmxBase.so \
                       libomx_framework_alt.so \
                       libomx_worker_peer_alt.so \
                       libfpscalculator_alt.so \
                       libomx_clock_utils_alt.so \
                       libomx_timed_task_queue_alt.so \
                       libstagefrighthw.so \
                       libsecmem.so \
                       secmem.tzo

include $(BUILD_MULTI_PREBUILT)
endif


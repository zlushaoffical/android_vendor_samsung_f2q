# Copyright (C) 2024 The EvolutionX Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),f2q)

# Include proprietary files
BLOB_PATH := vendor/samsung/f2q/proprietary

# Camera HAL
ifdef PRODUCT_SOONG_NAMESPACES
ifeq (,$(filter $(PRODUCT_SOONG_NAMESPACES),vendor/qcom/opensource/camera))
$(eval $(call add-soong-namespace,vendor/qcom/opensource/camera))
endif
endif

# Audio HAL
PRODUCT_PACKAGES += \
    libqtigef

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci

endif
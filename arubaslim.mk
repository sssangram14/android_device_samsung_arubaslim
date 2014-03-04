# Copyright (C) 2013 The CyanogenMod Project
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

DEVICE_PACKAGE_OVERLAYS += device/samsung/arubaslim/overlay

## Build recovery?
#BUILD_RECOVERY := true

include device/samsung/msm7x27a-common/msm7x27a.mk

PRODUCT_COPY_FILES += \
$(call inherit-product, vendor/samsung/arubaslim/vendor-blobs.mk)

ifndef BUILD_RECOVERY
## Splash screen
PRODUCT_COPY_FILES += \
    device/samsung/arubaslim/rootdir/initlogo.rle:root/initlogo.rle
    
else
## Recovery splash screen
PRODUCT_COPY_FILES += \
    device/samsung/arubaslim/rootdir/initlogo-cwm.rle:root/initlogo.rle
endif

$(call inherit-product, vendor/samsung/arubaslim/blobs.mk)

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

PRODUCT_COPY_FILES += \
$(call inherit-product, vendor/samsung/arubaslim/vendor-blobs.mk)

## Build recovery?
#BUILD_RECOVERY := true

include device/samsung/msm7x27a-common/msm7x27a.mk


ifndef BUILD_RECOVERY
## Splash screen
PRODUCT_COPY_FILES += \
    device/samsung/arubaslim/rootdir/initlogo.rle:root/initlogo.rle
    
else
## Recovery splash screen
PRODUCT_COPY_FILES += \
    device/samsung/arubaslim/rootdir/initlogo-cwm.rle:root/initlogo.rle
endif

PRODUCT_COPY_FILES += \
    device/samsung/arubaslim/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/samsung/arubaslim/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/samsung/arubaslim/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/samsung/arubaslim/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/samsung/arubaslim/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl
    
# Properties

## RIL, network
rild.libpath=/system/lib/libril-qc-qmi-1.so
rild.libargs=-d /dev/smd0
persist.rild.nitz_plmn=
persist.rild.nitz_long_ons_0=
persist.rild.nitz_long_ons_1=
persist.rild.nitz_long_ons_2=
persist.rild.nitz_long_ons_3=
persist.rild.nitz_short_ons_0=
persist.rild.nitz_short_ons_1=
persist.rild.nitz_short_ons_2=
persist.rild.nitz_short_ons_3=
ril.subscription.types=NV,RUIM
DEVICE_PROVISIONED=1


## Display, graphics
ro.sf.lcd_density=240
ro.opengles.version=131072
ro.max.fling_velocity=4000
ro.bq.gpu_to_cpu_unsupported=1
debug.sf.hw=1
debug.gr.numframebuffers=3
debug.composition.type=dyn

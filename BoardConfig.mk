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
#
# BoardConfig.mk
#

include device/samsung/msm7x27a-common/BoardConfigCommon.mk

## Platform
TARGET_BOOTLOADER_BOARD_NAME := arubaslim

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M
BOARD_KERNEL_BASE := 0x03200000
BOARD_PAGE_SIZE := 2048
TARGET_PREBUILT_KERNEL := device/samsung/arubaslim/kernel

## Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/arubaslim/bluetooth

## OTA assert
TARGET_OTA_ASSERT_DEVICE := arubaslim,GT_I8262

# Copyright (C) 2010 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
# The proprietary variant sets USE_CAMERA_STUB := false, this way
# we use the camera stub when the vendor tree isn't present, and
# the true camera library when the vendor tree is available.  Similarly,
# we set USE_PROPRIETARY_AUDIO_EXTENSIONS to true in the proprietary variant as
# well.
USE_CAMERA_STUB := true
USE_PROPRIETARY_AUDIO_EXTENSIONS := false

-include vendor/asus/grouper/BoardConfigVendor.mk

# inherit from the proprietary version
# needed for BP-flashing updater extensions

TARGET_BOARD_PLATFORM := tegra3
TARGET_TEGRA_VERSION := t30

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6567231488
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_BOOTLOADER_BOARD_NAME := grouper
TARGET_BOARD_INFO_FILE := device/asus/grouper/board-info.txt

TARGET_NO_BOOTLOADER := true

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_RECOVERY_UI_LIB := librecovery_ui_grouper
BOARD_CUSTOM_RECOVERY_UI := ../../device/asus/grouper/recovery/default_recovery_ui.c
BOARD_CUSTOM_RECOVERY_POWER_PROFILE := ../../device/asus/grouper/recovery/custom_power.c

TARGET_RELEASETOOLS_EXTENSIONS := device/asus/grouper

TARGET_PREBUILT_KERNEL := device/asus/grouper/kernel

BOARD_USE_CUSTOM_RECOVERY_FONT := true

#BOARD_TS_MAX_ROWS sets the MAX_ROWS amount. Use this to limit the height of the touch surface
BOARD_TS_MAX_ROWS := 45

DEVICE_RESOLUTION := 800x1200
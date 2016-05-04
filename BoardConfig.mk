#
# Copyright (C) 2015-2016 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/motorola/osprey

include device/motorola/msm8916-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := osprey-mini_defconfig

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216      # 16384 * 1024 mmcblk0p31
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616  # 16484 * 1024 mmcblk0p32
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2432696320  # 2375680 * 1024 mmcblk0p41
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4865261568 # 4751232 * 1024 mmcblk0p42

# TWRP
TW_THEME := portrait_hdpi

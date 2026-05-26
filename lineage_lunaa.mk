#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lunaa device
$(call inherit-product, device/realme/lunaa/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Axion Custom Parameters
TARGET_INCLUDE_AXFX := false
persist.sys.perf.scroll_opt = true
TARGET_DISABLE_EPPE := true
TORCH_STR_SUPPORTED := true
TARGET_ENABLE_BLUR := true
AXION_CAMERA_REAR_INFO := 64,8,2
AXION_CAMERA_FRONT_INFO := 32
AXION_MAINTAINER := itsXRP
AXION_PROCESSOR := Qualcomm_Snapdragon_778G
BYPASS_CHARGE_SUPPORTED ?= true
BYPASS_CHARGE_TOGGLE_PATH ?= /sys/devices/virtual/oplus_chg/battery/mmi_charging_enable
TARGET_IS_LOW_RAM ?= false
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true
GPU_FREQS_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/min_freq
GPU_MAX_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/max_freq
TARGET_INCLUDES_LOS_PREBUILTS := false
HBM_SUPPORTED := true
TARGET_SUPPORTED_REFRESH_RATES := 60,120


PRODUCT_NAME := lineage_lunaa
PRODUCT_DEVICE := lunaa
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3360

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3360-user 13 TP1A.220905.001 R.18a3a4d-41d9-71a9 release-keys" \
    BuildFingerprint=realme/RMX3360/RE54ABL1:13/TP1A.220905.001/R.18a3a4d-41d9-71a9:user/release-keys \
    DeviceName=RE54ABL1 \
    DeviceProduct=RMX3360 \
    SystemDevice=RE54ABL1 \
    SystemName=RMX3360

# Sepolicy
BOARD_SEPOLICY_DIRS += \
    device/realme/lunaa/sepolicy/vendor
$(call inherit-product-if-exists, vendor/oplus/bypasschg/bypasschg.mk)

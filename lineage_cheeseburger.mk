#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cheeseburger device
$(call inherit-product, device/oneplus/cheeseburger/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_cheeseburger
PRODUCT_DEVICE := cheeseburger
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A5000

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus5-user 10 QKQ1.191014.012 2010292059 release-keys" \
    BuildFingerprint=OnePlus/OnePlus5/OnePlus5:10/QKQ1.191014.012/2010292059:user/release-keys \
    DeviceName=OnePlus5 \
    DeviceProduct=OnePlus5 \
    SystemDevice=OnePlus5 \
    SystemName=OnePlus5

TARGET_VENDOR := oneplus

# Ship with Blur
TARGET_ENABLE_BLUR := true

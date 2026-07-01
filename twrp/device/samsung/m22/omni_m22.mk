#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from m22 device
$(call inherit-product, device/samsung/m22/device.mk)

PRODUCT_DEVICE := m22
PRODUCT_NAME := omni_m22
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M225FV
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m22jvxx-user 12 SP1A.210812.016 M225FVXXU4BVI8 release-keys"

BUILD_FINGERPRINT := samsung/m22jvxx/m22:12/SP1A.210812.016/M225FVXXU4BVI8:user/release-keys

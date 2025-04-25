#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from cb3 device
$(call inherit-product, device/sprd/cb3/device.mk)

PRODUCT_DEVICE := cb3
PRODUCT_NAME := omni_cb3
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := cb3_native
PRODUCT_MANUFACTURER := sprd

PRODUCT_GMS_CLIENTID_BASE := android-sprd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cb3_x3pro-user 9 PPR1.180610.011 41222 release-keys"

BUILD_FINGERPRINT := SPRD/cb3_x3pro/cb3:9/PPR1.180610.011/10082256:user/release-keys

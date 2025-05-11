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
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from generic device
$(call inherit-product, device/google/panther/device.mk)

PRODUCT_DEVICE := panther
PRODUCT_NAME := twrp_panther
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 7
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="panther-user 15 AP4A.250205.002 12821496 release-keys"

BUILD_FINGERPRINT := google/panther/panther:15/AP4A.250205.002/12821496:user/release-keys

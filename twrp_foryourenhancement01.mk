#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, vendor/omni/config/common.mk)


# Inherit from a05bd device
$(call inherit-product, device/kte/foryourenhancement01/device.mk)

PRODUCT_DEVICE := tb8168p1_64_l_d4x_xuezhiyou_bsp
PRODUCT_NAME := omni_foryourenhancement01
PRODUCT_BRAND := KingTop
PRODUCT_MODEL := For_Your_Enhancement_01
PRODUCT_MANUFACTURER := kte

PRODUCT_GMS_CLIENTID_BASE := android-kte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8168p1_64_l_d4x_xuezhiyou_bsp-user 10 QP1A.190711.020 mp3V457 release-keys"

BUILD_FINGERPRINT := alps/tb8168p1_64_l_d4x_xuezhiyou_bsp:10/QP1A.190711.020/:user/release-keys

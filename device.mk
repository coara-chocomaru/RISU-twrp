#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/kte/foryourenhancement01
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_TARGET_VNDK_VERSION := 29
PRODUCT_SHIPPING_API_LEVEL := 29

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=tb8168p1_64_l_d4x_xuezhiyou_bsp \
    ro.product.board=tb8168p1_64_l_d4x_xuezhiyou_bsp \
    ro.product.device=tb8168p1_64_l_d4x_xuezhiyou_bsp \
    ro.product.model=For_Your_Enhancement_01 \
    ro.product.locale=ja-JP \
    ro.build.system_root_image=no \
    persist.sys.locale=ja-JP \
    ro.treble.enabled=true \
    ro.build.characteristics=tablet \
    ro.product.first_api_level=29

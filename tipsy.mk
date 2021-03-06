#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2014 SlimRoms Project
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

# use 44.1 kHz sounds
TARGET_NEED_44KHZ_SOUNDS := true

## Specify phone tech before including full_phone
$(call inherit-product, vendor/tipsy/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := p5100

# Boot animation
# TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 1280

# Inherit some common Slim stuff.
$(call inherit-product, vendor/tipsy/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/p5100/full_p5100.mk)

# SlimRoms specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/p5100/overlay/slim
DEVICE_PACKAGE_OVERLAYS += device/samsung/espresso-common/overlay/slim-common

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p5100
PRODUCT_NAME := tipsy_p5100
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-P5100
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=espresso10rfxx \
    TARGET_DEVICE=espresso10rf \
    BUILD_FINGERPRINT="samsung/espresso10rfxx/espresso10rf:4.2.2/JDQ39/P5100XXDNA1:user/release-keys" \
    PRIVATE_BUILD_DESC="espresso10rfxx-user 4.2.2 JDQ39 P5100XXDNA1 release-keys"

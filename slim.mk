#
# Copyright (C) 2012 The CyanogenMod Project
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

# Release name
PRODUCT_RELEASE_NAME := togari

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080


# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

$(call inherit-product, device/sony/togari/full_togari.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

PRODUCT_NAME := slim_togari
PRODUCT_DEVICE := togari
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia Z Ultra

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6833 BUILD_FINGERPRINT=Sony/C6833/C6833:4.3/14.2.A.0.290/eng.hudsonslave:user/release-keys PRIVATE_BUILD_DESC="C6833-user 4.3 RHINE-1.1-131125-1201 eng.hudsonslave test-keys"

TARGET_OTA_ASSERT_SKIP=true

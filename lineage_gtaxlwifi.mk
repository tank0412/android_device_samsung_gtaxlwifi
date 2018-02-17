#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/gtaxlwifi/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_tablet_wifionly.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_gtaxlwifi
PRODUCT_DEVICE := gtaxlwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T580
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT= samsung/gtaxlwifixx/gtaxlwifi:7.0/NRD90M/T580XXU2BQI9:user/release-keys \
    PRIVATE_BUILD_DESC= "gtaxlwifixx-user 7.0 NRD90M T580XXU2BQI9 release-keys"

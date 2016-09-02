#
# Copyright (C) 2011 The Android Open-Source Project
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

# Adjust the dalvik heap to be appropriate for a tablet.
$(call inherit-product-if-exists, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/tablet-dalvik-heap.mk)

# Use our own init.rc
#
TARGET_PROVIDES_INIT_RC := true
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
					  	$(LOCAL_PATH)/init.rc:root/init.rc)

# Use our keyboard layout, whereby F1 and F10 are menu buttons.
#
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
					  	$(LOCAL_PATH)/armboard_v7a.kl:system/usr/keylayout/armboard_v7a.kl \
					  	$(LOCAL_PATH)/OpenGLwallpapers:system/etc/graphics/OpenGLwallpapers)


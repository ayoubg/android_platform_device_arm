#
# Inherit the full_base and device configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/arm/armboard_v7a/device.mk)

#
# Overrides
PRODUCT_NAME := armboard_v7a_noneon
PRODUCT_DEVICE := armboard_v7a_noneon

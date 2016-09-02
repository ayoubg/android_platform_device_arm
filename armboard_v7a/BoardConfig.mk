# These definitions override the defaults in config/config.make for armboard_v7a
#
# TARGET_NO_BOOTLOADER := false

TARGET_HARDWARE_3D := false 

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi 
TARGET_ARCH := arm

TARGET_NO_KERNEL := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true
BUILD_EMULATOR_OPENGL := true
BUILD_EMULATOR_OPENGL_DRIVER := true
USE_OPENGL_RENDERER := true

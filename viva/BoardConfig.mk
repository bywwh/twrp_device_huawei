TARGET_OTA_ASSERT_DEVICE := viva

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USES_ION := true

# Target arch settings
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CORTEX_CACHE_LINE_32 := true

TARGET_BOOTLOADER_BOARD_NAME := viva

# Kernel/Ramdisk
BOARD_KERNEL_CMDLINE := console=ttyGS2,115200n8 mem=1G vmalloc=768M vram=16M omapfb.vram=0:8M omap_wdt.timer_margin=30 mmcparts=mmcblk0:p15(splash) androidboot.hardware=viva
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/huawei/viva/kernel

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6731857920
BOARD_FLASH_BLOCK_SIZE := 4096

HAVE_SELINUX := false
TWHAVE_SELINUX := false

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun/file"

# Recovery TWRP
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/viva/kernel
TARGET_RECOVERY_INITRC := device/huawei/viva/init.recovery.viva.rc
TARGET_RECOVERY_FSTAB = device/huawei/viva/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
DEVICE_RESOLUTION := 540x960
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/extSdCard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "extSdCard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_HAS_DUAL_STORAGE :=true
TW_FLASH_FROM_STORAGE := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_FORCE_CPUINFO_FOR_DEVICE_ID := false
TW_MAX_BRIGHTNESS := 250
TW_BRIGHTNESS_PATH := /sys/devices/omapdss/display0/backlight/lcd/brightness
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
TW_SDEXT_NO_EXT4 := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_TOOLBOX := true

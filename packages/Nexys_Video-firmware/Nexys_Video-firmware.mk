################################################################################
#
# NEXYS_VIDEO_FIRMWARE
#
################################################################################

NEXYS_VIDEO_FIRMWARE_SITE = $(BR2_EXTERNAL)/src/FPGA-firmware
NEXYS_VIDEO_FIRMWARE_DEPENDENCIES = mb_bootloader
NEXYS_VIDEO_FIRMWARE_LICENSE = Propietary
NEXYS_VIDEO_FIRMWARE_INSTALL_STAGING = YES

define NEXYS_VIDEO_FIRMWARE_BUILD_CMDS
	cd $(@D); \
	./build.sh -P Nexys_Video -B $(STAGING_DIR)/usr/share/fpga/$(BR2_PACKAGE_NEXYS_VIDEO_FIRMWARE_BOOTLOADER_NAME) -V $(BR2_PACKAGE_NEXYS_VIDEO_FIRMWARE_XILINX_SETTINGS)
endef

define NEXYS_VIDEO_FIRMWARE_INSTALL_TARGET_CMDS
	cd $(@D); \
	./build.sh -P Nexys_Video -I $(BASE_DIR)/images/
endef

define NEXYS_VIDEO_FIRMWARE_INSTALL_STAGING_CMDS
	cd $(@D); \
	./build.sh -P Nexys_Video -I $(STAGING_DIR)/usr/share/fpga/
endef

$(eval $(generic-package))

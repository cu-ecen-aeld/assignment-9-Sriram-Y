
##############################################################
#
# AESDCHARDRIVER
#
##############################################################

AESDCHARDRIVER_VERSION = 'f28a1d5492756dac84ce8fb71269ad3498f576f4'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHARDRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-Sriram-Y.git'
AESDCHARDRIVER_SITE_METHOD = git
AESDCHARDRIVER_GIT_SUBMODULES = YES

AESDCHARDRIVER_MODULE_SUBDIRS = aesd-char-driver

define AESDCHARDRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0777 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)sbin/
	$(INSTALL) -m 0777 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)sbin/
	$(INSTALL) -m 0777 $(@D)/aesd-char-driver/aesdchar-start-stop.sh $(TARGET_DIR)/etc/init.d/S99aesdchardriver
endef

$(eval $(kernel-module))
$(eval $(generic-package))

# 
# Copyright (C) 2008-2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=bison
PKG_VERSION:=3.3.2

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@GNU/$(PKG_NAME)
PKG_HASH:=039ee45b61d95e5003e7e8376f9080001b4066ff357bde271b7faace53b9d804

HOST_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk

HOST_CONFIGURE_ARGS += --enable-threads=pth

define Host/Clean
	-$(MAKE) -C $(HOST_BUILD_DIR) uninstall
	$(call Host/Clean/Default)
endef

define Host/Install
	$(call Host/Install/Default)
	$(INSTALL_BIN) ./scripts/yacc $(STAGING_DIR_HOST)/bin/yacc
endef

$(eval $(call HostBuild))

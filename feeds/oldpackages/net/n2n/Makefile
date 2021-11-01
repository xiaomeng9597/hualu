#
# Copyright (C) 2007-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=n2n
PKG_VERSION:=v1
PKG_RELEASE:=4

PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_SOURCE_SUBDIR).tar.gz
PKG_MD5SUM:=c0e2e93d8a5c35d2e2901af4ae077685

include $(INCLUDE_DIR)/package.mk

define Package/n2n
  SECTION:=net
  CATEGORY:=Network
  TITLE:=VPN tunneling daemon
  URL:=http://www.ntop.org/n2n/
  SUBMENU:=VPN
  DEPENDS:=+libpthread +kmod-tun
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		$(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		INSTALL_PROG=":"
endef

define Package/n2n/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/edge $(1)/usr/sbin/edge_v1
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/supernode $(1)/usr/sbin/supernode_v1
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) ./files/n2n.config $(1)/etc/config/n2n
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/n2n.init $(1)/etc/init.d/n2n
endef

define Package/n2n/conffiles
/etc/config/n2n
endef

$(eval $(call BuildPackage,n2n))

# 
# Copyright (C) 2006-2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=findutils
PKG_VERSION:=4.4.2

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@GNU/$(PKG_NAME)
PKG_MD5SUM:=351cc4adb07d54877fa15f75fb77d39f

HOST_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk

define Host/Compile
($(SED) 's/IO_ferror_unlocked/IO_EOF_SEEN/' $(HOST_BUILD_DIR)/gnulib/lib/*.c;echo "#define _IO_IN_BACKUP 0x100" >> $(HOST_BUILD_DIR)/gnulib/lib/stdio-impl.h;$(SED) '18c#include <sys/sysmacros.h>' $(HOST_BUILD_DIR)/gnulib/lib/freadahead.c)
endef

$(eval $(call HostBuild))

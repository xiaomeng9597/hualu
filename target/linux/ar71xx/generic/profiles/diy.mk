#
# Copyright (C) 2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/TSD084
	NAME:=PISEN TS-D084
	PACKAGES:=kmod-usb-core kmod-usb2
endef


define Profile/TSD084/Description
	Package set optimized for the PISEN TS-D084
endef
$(eval $(call Profile,TSD084))

define Profile/HLN666
	NAME:=HUALU HL-N666
	PACKAGES:=kmod-usb-core kmod-usb2
endef


define Profile/HLN666/Description
	Package set optimized for the HUALU HL-N666
endef
$(eval $(call Profile,HLN666))
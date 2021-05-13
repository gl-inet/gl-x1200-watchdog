
#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=gl-x1200-watchdog
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
include $(INCLUDE_DIR)/package.mk

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile/Default
endef
Build/Compile = $(Build/Compile/Default)

define Package/${PKG_NAME}/Default
	SECTION:=base
	CATEGORY:=gl-inet
	TITLE:=GL iNet x1200  watchdog
endef

Package/${PKG_NAME} = $(Package/${PKG_NAME}/Default)

define Package/${PKG_NAME}/description
	 gl x1200 watchdog for gl-inet.
endef

define Package/${PKG_NAME}/install	
	chmod -R +x ./src
	$(CP) ./src/* $(1)/
endef

$(eval $(call BuildPackage,${PKG_NAME}))

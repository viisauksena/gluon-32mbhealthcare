include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-32mbhealthcare
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/gluon-32mbhealthcare
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=32mb-healthcare
  DEPENDS:=+gluon-core
endef

define Build/Prepare
        mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-32mbhealthcare/install
        $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,gluon-32mbhealthcare))


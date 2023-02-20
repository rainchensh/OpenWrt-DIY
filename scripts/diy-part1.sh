#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)

#update golang 19.x (Fix build for openwrt-21.02/22.03 branches)
rm -rf feeds/packages/lang/golang
svn export https://github.com/sbwml/packages_lang_golang feeds/packages/lang/golang
# Svn checkout packages from immortalwrt's repository
#git clone --depth=1 https://github.com/immortalwrt/packages -b openwrt-18.06 packages
#git clone --depth=1 https://github.com/immortalwrt/luci -b openwrt-18.06 luci

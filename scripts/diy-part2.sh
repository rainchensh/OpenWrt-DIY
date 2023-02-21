#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
# sed -i 's/192.168.1.5/192.168.199.1/g' package/base-files/files/bin/config_generate
#update golang 19.x (Fix build for openwrt-21.02/22.03 branches)
rm -rf feeds/packages/lang/golang
svn export https://github.com/sbwml/packages_lang_golang feeds/packages/lang/golang
# Add luci-app-ssr-plus
pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
git clone --depth=1 https://github.com/sbwml/luci-app-alist
popd

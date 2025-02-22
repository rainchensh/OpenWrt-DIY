#!/bin/bash
#
# 
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#sed -i '$a src-git netspeedtest https://github.com/sirpdboy/netspeedtest' feeds.conf.default
# mkdir package/libs/libaio
# svn export https://github.com/openwrt/packages/branches/openwrt-21.02/libs/libaio packages/libs/libaio
# echo 'src-git openvswitch git://github.com/pichuang/openvwrt.git' >> feeds.conf
# echo 'src-git packages https://git.openwrt.org/feed/packages.git' >> feeds.conf.default
echo 'src-git luci https://git.openwrt.org/project/luci.git' >> feeds.conf.default
echo 'src-git routing https://git.openwrt.org/feed/routing.git' >> feeds.conf.default
echo 'src-git telephony https://git.openwrt.org/feed/telephony.git' >> feeds.conf.default

#!/bin/bash
#
# 
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i '$a src-git netspeedtest https://github.com/sirpdboy/netspeedtest' feeds.conf.default

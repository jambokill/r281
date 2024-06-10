#!/bin/bash

sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git 3ginfo_lite https://github.com/4IceG/luci-app-3ginfo-lite' feeds.conf.default
sed -i '$a src-git lite_watchdog https://github.com/4IceG/luci-app-lite-watchdog' feeds.conf.default
sed -i '$a src-git modemband https://github.com/4IceG/luci-app-modemband' feeds.conf.default
sed -i '$a src-git modemdefine https://github.com/4IceG/luci-app-modemdefine' feeds.conf.default
sed -i '$a src-git sms_tool https://github.com/4IceG/luci-app-sms-tool' feeds.conf.default
sed -i '$a src-git v2raya https://github.com/v2rayA/v2raya-openwrt' feeds.conf.default
sed -i '$a src-git xray https://github.com/yichya/luci-app-xray' feeds.conf.default

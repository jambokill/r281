#!/bin/bash

# latest_release="$(curl -s https://api.github.com/repos/openwrt/openwrt/tags | grep -Eo "v22.03.+[0-9\.]" | head -n 1 | sed 's/v//g')"
# wget https://downloads.openwrt.org/releases/${latest_release}/targets/ramips/mt7621/packages/Packages.manifest
# grep -m 1 "Depends: kernel (=.*)$" Packages.manifest | sed -e 's/.*-\(.*\))/\1/' > .vermagic
# sed -i -e 's/^\(.\).*vermagic$/\1cp $(TOPDIR)\/.vermagic $(LINUX_DIR)\/.vermagic/' ./include/kernel-defaults.mk

echo "Move Custom Files"
mv -f ./custom/files ./

echo "Remove Config Folder"
rm -r ./files/etc/config

echo "Patch For NCM"
mv -f ./custom/patch/ncm.* ./package/network/utils/comgt/files/

echo "Copy Build Config"
mkdir bin
cp .config ./bin/build.config

exit 0
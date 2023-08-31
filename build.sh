#!/bin/bash
set -e
cd "$(dirname "$(readlink -f "$0" 2>/dev/null)" 2>/dev/null)"
rm -rf *rootfs*.tar.* pkg src 2>/dev/null
echo "= create rootfs.tar.gz"
tar --gzip -acf rootfs.tar.gz -C . rootfs
echo "= create archlinux package"
makepkg -fsCc --noconfirm
rm -rf *rootfs*.tar.gz

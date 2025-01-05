#!/bin/bash
set -e
cd "$(dirname "$(readlink -f "$0" 2>/dev/null)" 2>/dev/null)"
echo "= create rootfs.tar"
tar -cf rootfs.tar -C . rootfs
echo "= create archlinux package"
makepkg -fsCc --noconfirm --nodeps
rm -rf *rootfs*.tar

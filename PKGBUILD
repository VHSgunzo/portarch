# Maintainer: VHSgunzo <vhsgunzo.github.io>

pkgname='runimage-rootfs-portarch'
pkgver='0.40.1'
pkgrel='1'
pkgdesc='Rootfs configuration for RunImage container'
url="https://github.com/VHSgunzo/portarch"
license=('MIT')
arch=('x86_64' 'aarch64')
source=(
    'git+https://github.com/VHSgunzo/runimage-rootfs.git'
    'rootfs.tar' "pacman-$CARCH.conf"
)
sha256sums=('SKIP' 'SKIP' 'SKIP')
provides=('filesystem=2024.11.21')
depends=('runimage-utils')
conflicts=(
    'runimage-rootfs'
    'runimage-rootfs-lwrun'
)
install='portarch.install'

package() {
    cp -arTf --no-preserve=ownership "$srcdir/runimage-rootfs/rootfs" "$pkgdir"
    install -Dm644 "$srcdir/runimage-rootfs/mirrorlist-$CARCH" "$pkgdir/var/rootfs/etc/pacman.d/mirrorlist"
    cp -arTf --no-preserve=ownership "$srcdir/rootfs" "$pkgdir"
    install -Dm644 "pacman-$CARCH.conf" "$pkgdir/var/rootfs/etc/pacman.conf"
    find "$pkgdir" -type f -name '.keep' -exec rm -f {} \;
}

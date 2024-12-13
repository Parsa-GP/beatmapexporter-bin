# Maintainer: ParsaGP <psrzp1386@gmail.com>
pkgname=beatmapexporter-bin
pkgver=2.2.4
pkgrel=1
pkgdesc="osu!lazer Beatmap Exporter utility"
arch=("x86_64")
url="https://github.com/kabiiQ/BeatmapExporter"
license=("MIT")
depends=()
makedepends=("curl")
provides=("beatmapexporter")
conflicts=("beatmapexporter")
options=('!strip')
source=("https://github.com/kabiiQ/BeatmapExporter/releases/download/v${pkgver}/linux-BeatmapExporter"
        "https://github.com/kabiiQ/BeatmapExporter/releases/download/v${pkgver}/linux-BeatmapExporterCLI")
noextract=()
sha256sums=(
    "221a00929f3e573c42083c26e341147e3590f49c531ad5e507a5f5999c43ae15"
    "075b23070182a09ff6f8465c2c8e3450998d394ab4e3d17b66f181ed04c4d6d6"
)

package() {
    install -Dm755 "$srcdir/linux-BeatmapExporter" "$pkgdir/usr/bin/beatmapexporter"
    install -Dm755 "$srcdir/linux-BeatmapExporterCLI" "$pkgdir/usr/bin/beatmapexporter-cli"

    # Adding to desktop environment menus
    install -Dm644 /dev/null "$pkgdir/usr/share/applications/beatmapexporter.desktop"
    cat <<EOF > "$pkgdir/usr/share/applications/beatmapexporter.desktop"
[Desktop Entry]
Name=Beatmap Exporter
Exec=beatmapexporter
Icon=application-default-icon
Type=Application
Categories=Utility;
EOF
}

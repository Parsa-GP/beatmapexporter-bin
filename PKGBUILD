# Maintainer: ParsaGP <psrzp1386@gmail.com>
pkgname=beatmapexporter-bin
pkgver=2.2.5
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
    "42a8db5ec3cb65772f8b6f50ea1f78cfeab1efb55e7371e1bf53eb636eda4d2b"
    "3af34fcb5077bf33644bba45bd2eb9ddad896c47a39b5086ef4c051eaf803c19"
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

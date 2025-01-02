# Maintainer: ParsaGP <psrzp1386@gmail.com>
pkgname=beatmapexporter-bin
pkgver=2.2.6
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
source=(
    "BeatmapExporter::https://github.com/kabiiQ/BeatmapExporter/releases/download/v${pkgver}/linux-BeatmapExporter"
    "BeatmapExporterCLI::https://github.com/kabiiQ/BeatmapExporter/releases/download/v${pkgver}/linux-BeatmapExporterCLI"
    "beatmapexporter.desktop"
    "beatmapexporter"
    "beatmapexporter-cli"
)
noextract=()
sha256sums=(
    "37d5d255d92b2639075678bc70d03428adef31ccff1afa093296475cc0937fd6"
    "f5bb8bca63043b19e887dff8b2568b2ff4f9ab77e1223cff80aad121d1ec6662"
    "2056cd543779db79f0326d0772f7992d22e4bde560d57a336bd81bbc80bcff27"
    "35bc629599cb506ea1388048e9647a4739f05d3188814a88d645973e4f328d04"
    "4e2b5532affb0902bdd42306e0ef43bf31c31bd1b2566c22741bcf0551118d62"
)

package() {
    # Move the downloaded binaries to /opt/beatmapexporter
    install -Dm755 "$srcdir/BeatmapExporter" "$pkgdir/opt/beatmapexporter/BeatmapExporter"
    install -Dm755 "$srcdir/BeatmapExporterCLI" "$pkgdir/opt/beatmapexporter/BeatmapExporterCLI"

    # Create symlinks to /usr/bin
    install -Dm755 -t "$pkgdir/usr/bin" beatmapexporter
    install -Dm755 -t "$pkgdir/usr/bin" beatmapexporter-cli

    # Add to desktop entries
    install -Dm 755 "$srcdir/beatmapexporter.desktop" "$pkgdir/usr/share/applications/beatmapexporter.desktop"
}

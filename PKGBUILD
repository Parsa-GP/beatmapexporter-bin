# Maintainer: ParsaGP <psrzp1386@gmail.com>
pkgname=beatmapexporter-bin
pkgver=2.3.0
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
    "564bc296bf0483b989ed56da54d677c268ca27336f6c545ecbff70fd77db32c8"
    "2477270fff32f1ad6900ab23db4ab1d3083e8f379f270a0b72519f4a74804d40"
    "2056cd543779db79f0326d0772f7992d22e4bde560d57a336bd81bbc80bcff27"
    "35bc629599cb506ea1388048e9647a4739f05d3188814a88d645973e4f328d04"
    "4e2b5532affb0902bdd42306e0ef43bf31c31bd1b2566c22741bcf0551118d6"
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

// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CImageMagick",
    products: [
        .library(name: "CImageMagick", targets: ["CImageMagick"])
    ],
    targets: [
        .systemLibrary(
            name: "CImageMagick",
            pkgConfig: "MagickWand",
            providers: [
                .apt(["imagemagick", "libmagick++-dev"]),
                .brew(["imagemagick"])
            ])
    ]
)

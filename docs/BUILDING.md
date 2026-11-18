# Building Atmos Player for macOS

## Overview

Atmos Player v2 uses a modified development version of mpv with experimental CoreAudio support for Dolby TrueHD and E-AC-3 compressed audio passthrough.

## Verified versions

- mpv: 0.42.0-dev-g59b3763c1
- FFmpeg: 9.0.2
- libplacebo: 7.387.0
- Target architecture: Apple Silicon (ARM64)

## Source modification

The CoreAudio changes originate from mpv commit 59b3763c1, authored by Riccardo Di Clemente.

The original commit patch is available in the patches directory.

The modified mpv source has also been archived separately for corresponding-source distribution.

## Original Meson configuration

The following settings were recorded from the working build:

- buildtype: debugoptimized
- default_library: shared
- prefix: /opt/homebrew
- bindir: bin
- libdir: lib
- gpl: true
- libmpv: true

The complete recorded Meson options are in docs/mpv-build-options.json.

## Application launcher

The application uses an AppleScript droplet to launch its bundled mpv executable with CoreAudio exclusive output and compressed audio passthrough enabled.

The launcher source and Info.plist are in the launcher directory.

## Reproducibility status

These are verified build details, not yet a complete tested reproduction procedure.

The exact dependency installation, compilation, library bundling, signing, and packaging commands still need to be documented and verified before claiming a reproducible release build.

# Atmos Player v2.1 - mpv Build Instructions

## Component

Custom mpv build supporting experimental Dolby TrueHD Atmos
and DTS-HD / DTS:X passthrough through macOS CoreAudio.

## Upstream source

Repository:
https://github.com/mpv-player/mpv

Exact upstream commit:
ecd5469c42f7aee53745679a98e2bbe89a3e8b14

Collected source archive:
The archive is supplied in the separate source-release package.
Alternatively, retrieve the exact upstream commit listed above.

## Complete custom patch

../patches/mpv-complete-atmos-dtsx.patch

The patch modifies:
- audio/out/ao_coreaudio_exclusive.c
- audio/out/ao_coreaudio_utils.c
- stream/stream_libarchive.c

The complete patch was previously verified to reconstruct
the three modified source files byte-for-byte.

## Original build environment

Platform: macOS Apple Silicon
Compiler: Apple Clang 21.0.0
Meson: 1.12.1
Ninja: 1.13.2
pkg-config: 3.0.11

Original build environment note:

The original build used Homebrew-managed dependencies.
The /opt/homebrew prefix describes the original build
environment, not a runtime requirement of the portable
application.

Original build settings:
- buildtype: debugoptimized
- optimization: 2
- debug: true
- strip: false
- prefix: /opt/homebrew
- default_library: shared
- libmpv: true
- coreaudio: auto
- cocoa: auto
- auto_features: auto

Additional original options and dependencies are recorded in:
mpv-build-environment.txt

## Proposed source reconstruction

Extract the collected upstream source archive into a
new directory.

Apply the complete patch from that source directory:

    git apply /path/to/mpv-complete-atmos-dtsx.patch

Alternatively, retrieve the exact upstream Git commit
and apply the same patch.

## Proposed build commands

Configure a separate build directory:

    meson setup build-release-test -Dbuildtype=debugoptimized

Build mpv:

    meson compile -C build-release-test

The original build used additional auto-detected dependencies.
Reproducing the exact original binary may require matching
the original dependency versions and build environment.

The build directory name above is illustrative and must
not replace or overwrite the existing build-dtsx directory.

## Licensing

The mpv source includes GPL and LGPL license documentation.
The applicable licensing obligations must be assessed
alongside the patched FFmpeg and bundled dependencies.

## Verification status

Exact upstream commit identified: YES
Upstream source archive collected: YES
Complete custom patch verified: YES
Original build settings recovered: YES
Bundled mpv compiled-code match: YES
Clean reproducible rebuild: NOT YET VERIFIED
Public redistribution compliance: NOT YET VERIFIED

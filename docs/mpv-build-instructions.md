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

## Corrected custom patch

../patches/mpv-atmos-dtsx-corrected.patch

The patch modifies:
- audio/out/ao_coreaudio_exclusive.c
- audio/out/ao_coreaudio_utils.c

The corrected patch was independently verified against the exact
upstream baseline. It modifies only the two CoreAudio files listed
above. The archive-stream implementation remains unchanged.

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

    git apply /path/to/mpv-atmos-dtsx-corrected.patch

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

## Authoritative corrected release patch

Use only:

patches/mpv-atmos-dtsx-corrected.patch

SHA256:

e3f3af75f508de2b0d828ce29cfd6d7ba5f7e559eeb14357154d3a06f6552f53

Upstream baseline:

ecd5469c42f7aee53745679a98e2bbe89a3e8b14

Modified files:

- audio/out/ao_coreaudio_exclusive.c
- audio/out/ao_coreaudio_utils.c

The corrected patch was independently verified against a clean
export of the upstream baseline.

The upstream stream/stream_libarchive.c implementation is unchanged.

Historical development patches retained for provenance only:

- mpv-complete-atmos-dtsx.patch
- 0001-coreaudio-truehd-eac3-passthrough.patch

Do not apply either historical patch when reconstructing the
corrected source release.

A fresh build and playback test using the corrected patch
have not yet been verified.

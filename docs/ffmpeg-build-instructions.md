# Atmos Player v2.1 - FFmpeg Build Instructions

## Component

FFmpeg 9.0.2 with experimental DTS:X height-channel decoding.

## Upstream source

https://ffmpeg.org/releases/ffmpeg-9.0.2.tar.xz

## Complete custom patch

../patches/ffmpeg-9.0.2-dtsx-complete.patch

Modified files:
- libavcodec/dca_xll.c
- libavcodec/dca_xll.h
- libavcodec/dcadec.c
- libavcodec/dcadec.h

## Original build environment

Platform: macOS Apple Silicon
Compiler: Apple Clang 21.0.0
Build prefix: $BUILD_PREFIX

## Portable build prefix

For a reconstruction, select a local installation prefix:

    BUILD_PREFIX="${BUILD_PREFIX:-$HOME/AtmosDTSXBuild}"

The original developer-specific prefix has been normalized
in this documentation.

## Original configure command

./configure --prefix=$BUILD_PREFIX --enable-gpl --enable-version3 --enable-shared --enable-pthreads --enable-videotoolbox --enable-audiotoolbox --enable-neon

## Proposed build procedure

1. Extract the official FFmpeg 9.0.2 source archive.
2. Enter the extracted source directory.
3. Apply the complete patch using:

   patch -p1 < /path/to/ffmpeg-9.0.2-dtsx-complete.patch

4. Run the original configure command shown above.
5. Build using:

   make -j4

6. Install using:

   make install

The commands describe a proposed reconstruction procedure.
A complete clean rebuild has not yet been verified.

## Licensing

Original configuration includes:
- --enable-gpl
- --enable-version3

Review GPLv3 and other applicable redistribution obligations.

## Verification status

Original configuration recovered: YES
Original build files retained: YES
Complete patch previously verified: YES
Bundled FFmpeg compiled-code match: YES
Clean reproducible rebuild: NOT YET VERIFIED
Public redistribution compliance: NOT YET VERIFIED

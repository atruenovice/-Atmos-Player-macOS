# Atmos Player v2.1 — Local Modifications and Attribution

## Purpose

This document records the upstream contributions and additional
modifications incorporated into the Atmos Player v2.1 release.

Atmos Player is distributed as a free public download. The original
upstream copyrights and applicable licences remain in force.

## 1. mpv CoreAudio: original upstream contribution

The original E-AC-3 and Dolby TrueHD CoreAudio passthrough contribution
was made by Riccardo Di Clemente.

- Repository: https://github.com/ric-dicle/mpv
- Commit: 59b3763c1072415112a7dcc7c88c84684a83cae3
- Date: 2026-11-10
- Subject: ao_coreaudio: add support for E-AC-3 and TrueHD compressed formats

Original files:

- audio/out/ao_coreaudio_exclusive.c
- audio/out/ao_coreaudio_utils.c

The original contribution adds CoreAudio format identifiers and
compressed-format handling for E-AC-3 and TrueHD, including IEC 60958
carrier-rate calculations.

The original author's attribution and applicable upstream notices
must be preserved.

## 2. Additional mpv modifications

The corrected Atmos Player mpv patch contains experimental DTS-HD
format identification and compressed-format handling.

Files:

- audio/out/ao_coreaudio_exclusive.c
- audio/out/ao_coreaudio_utils.c

These additions were prepared with AI assistance during project
development. The DTS-HD implementation is experimental. Its presence
in the source does not establish compatibility with every DTS-HD
stream or receiver.

The archive stream implementation is retained exactly as provided by
the upstream baseline. No Atmos Player archive-stream modification is
included in the corrected release patch.

## 3. FFmpeg DTS:X modifications

The FFmpeg 9.0.2 release patch contains DTS:X XLL decoder changes.

Files:

- libavcodec/dca_xll.c
- libavcodec/dca_xll.h
- libavcodec/dcadec.c
- libavcodec/dcadec.h

The changes include DTS:X XLL height-channel handling, channel-set
parsing, height-channel mapping, NAVI validation and decoder
integration.

These modifications were prepared with AI assistance during Atmos
Player development. They must remain subject to the original FFmpeg
licence and copyright requirements.

## 4. Patch inventory

Authoritative release patches:

- ffmpeg-9.0.2-dtsx-complete.patch
- mpv-atmos-dtsx-corrected.patch

Historical patches retained for provenance:

- mpv-complete-atmos-dtsx.patch — superseded; do not apply.
- 0001-coreaudio-truehd-eac3-passthrough.patch — standalone overlapping
  development patch; do not apply separately.

## 5. Attribution and copyright

AI assistance is disclosed as part of the development history.
This disclosure does not assert that AI is a legal author or copyright
holder.

The Atmos Player project does not claim ownership of upstream mpv,
FFmpeg or third-party code.

All original copyright notices, licence texts and required
attributions must be retained.

## 6. Licensing

The applicable licence for each modified component continues to
govern its distribution.

This document is explanatory project documentation. It does not
replace the original licence texts or grant additional rights.

See the accompanying third-party licence documents.

## 7. Verification status

The descriptions above reflect the corrected patch and provenance
information collected during the v2.1 release audit.

The corrected mpv patch was independently verified against upstream
baseline ecd5469c42f7aee53745679a98e2bbe89a3e8b14. It modifies only
the two CoreAudio files identified above. The upstream archive-stream
file is unchanged.

Before final publication, verify the exact modification dates and
ensure prominent modification notices are present in the actual
modified upstream source files.

Last reviewed: 2026-11-19



## 8. Corrected release patch designation

The authoritative mpv source patch for the corrected v2.1 source
release is:

patches/mpv-atmos-dtsx-corrected.patch

SHA256:
1d8c3b3ccaaeb06cc10c0328d4066df8a869b7d257fcf506b8a4556d7d0fc2f0

Verified upstream baseline:
ecd5469c42f7aee53745679a98e2bbe89a3e8b14

The corrected patch modifies only:
- audio/out/ao_coreaudio_exclusive.c
- audio/out/ao_coreaudio_utils.c

The following historical patches are retained for provenance only
and must not be applied to reconstruct the corrected release:

- mpv-complete-atmos-dtsx.patch
- 0001-coreaudio-truehd-eac3-passthrough.patch

The original build record is historical evidence. A fresh mpv build
using the corrected patch has not yet been verified.

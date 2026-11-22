# Atmos Player v2.1 — Source Modification Notice Register

This register identifies the source files modified by the release
patches and the notices that must accompany those modifications.

IMPORTANT:
This register is not a substitute for placing prominent modification
notices in the actual modified source files where required by their
licences. The final patched source tree must be inspected before release.

## mpv — original CoreAudio files with additional modifications

### audio/out/ao_coreaudio_exclusive.c

Original upstream contribution:
Riccardo Di Clemente, commit
59b3763c1072415112a7dcc7c88c84684a83cae3.

Additional Atmos Player modifications:
Experimental DTS-HD format identification and handling, prepared with
AI assistance.

### audio/out/ao_coreaudio_utils.c

Original upstream contribution:
Riccardo Di Clemente, commit
59b3763c1072415112a7dcc7c88c84684a83cae3.

Additional Atmos Player modifications:
Experimental DTS-HD format identification and compressed-format
handling, prepared with AI assistance.

## FFmpeg 9.0.2

### libavcodec/dca_xll.c
### libavcodec/dca_xll.h
### libavcodec/dcadec.c
### libavcodec/dcadec.h

Atmos Player modification:
DTS:X XLL height-channel decoding and integration changes prepared
with AI assistance.

## Required completion before publication

For every modified source file:

1. Preserve all existing copyright and licence notices.
2. Add a prominent notice identifying the modification.
3. Record the actual modification date, verified from the development
   history or source-control records.
4. Identify the Atmos Player v2.1 project modification.
5. Preserve the attribution to Riccardo Di Clemente in the two
   applicable CoreAudio files.
6. Ensure the final source archive contains the modified files and
   the corresponding notices.

Do not insert an unverified historical modification date.

The corrected mpv patch was checked against upstream baseline
ecd5469c42f7aee53745679a98e2bbe89a3e8b14.

The archive stream file is not modified by the corrected release patch.

See docs/LOCAL-MODIFICATIONS.md for the detailed provenance record.

Last reviewed: 2026-11-19



## Corrected v2.1 release patch mapping

Authoritative patch:
patches/mpv-atmos-dtsx-corrected.patch

Upstream baseline:
ecd5469c42f7aee53745679a98e2bbe89a3e8b14

Patch SHA256:
1d8c3b3ccaaeb06cc10c0328d4066df8a869b7d257fcf506b8a4556d7d0fc2f0

The corrected patch modifies only:

- audio/out/ao_coreaudio_exclusive.c
- audio/out/ao_coreaudio_utils.c

The archive implementation, stream/stream_libarchive.c, is unchanged
from the upstream baseline.

Historical overlapping development patches must not be applied
alongside the corrected patch.

The corrected mpv and FFmpeg patches have passed isolated
application tests against the archived upstream sources.
A clean rebuild from those patches remains unverified.
Previously successful application playback tests do not by
themselves prove that the distributed binaries were built
from these exact archived sources and patches.

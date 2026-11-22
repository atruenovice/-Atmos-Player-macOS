# Atmos Player v2.2 - Audio Compatibility

## Overview

Atmos Player is an Apple Silicon macOS application
designed for HDMI audio playback through a compatible
AV receiver.

Its principal purpose is to preserve supported
compressed multichannel audio streams rather than
decode them to ordinary PCM before transmission.

Actual HDMI output depends on the source file,
selected audio track, macOS audio device, receiver,
and playback configuration.

## Verified HDMI Passthrough

The following formats were successfully tested
using the packaged Atmos Player v2.2 application
and a Denon AVR-S970H receiver.

| Source audio | Receiver result | Status |
| --- | --- | --- |
| Dolby Digital Plus with Atmos (E-AC-3 JOC) | Dolby Atmos | Verified |
| Dolby TrueHD with Atmos | Dolby Atmos | Verified |
| DTS:X audio | DTS:X | Verified |

These results establish successful playback on
the tested hardware. They do not guarantee
identical results on every Mac or receiver.

## Other Audio Formats

| Format | Compatibility note |
| --- | --- |
| Dolby Digital (AC-3) | Underlying playback software supports the codec; app-specific HDMI passthrough not independently verified |
| Standard DTS | Underlying playback software supports the codec; app-specific HDMI passthrough not independently verified |
| DTS-HD Master Audio without DTS:X | App-specific HDMI passthrough not independently verified |
| E-AC-3 without Atmos | App-specific HDMI passthrough not independently verified |
| TrueHD without Atmos | App-specific HDMI passthrough not independently verified |
| AAC | Decoded playback capability; not compressed HDMI bitstream passthrough |
| FLAC | Decoded playback capability; not compressed HDMI bitstream passthrough |
| ALAC | Decoded playback capability; not compressed HDMI bitstream passthrough |
| PCM | Uncompressed audio playback, not compressed bitstream passthrough |

Support in FFmpeg or mpv does not by itself prove
that a particular format is transmitted unchanged
over HDMI by this packaged application.

## Media Files and Containers

The verified Atmos and DTS:X playback tests used
local movie files.

MKV is a primary intended container for Blu-ray
movie rips.

The application uses mpv and FFmpeg, which support
numerous other media containers. Individual
containers, subtitle combinations, network paths,
and disc structures are not all independently
verified in the v2.2 release tests.

An MKV file can contain multiple audio tracks.
The selected track determines which audio format
is presented for playback.

## Hardware Requirements

- Apple Silicon Mac.
- Compatible macOS version and application build.
- HDMI connection to a compatible AV receiver.
- Receiver capable of decoding the selected format.
- Correct HDMI audio output device selection.
- Source containing the intended audio format.

The Denon AVR-S970H was the receiver used for
the verified tests.

## Source Codec Versus Actual HDMI Output

A file containing Dolby Atmos or DTS:X does not
automatically mean that the receiver receives
that format.

For example:

- Source: Dolby TrueHD with Atmos
- Intended HDMI output: TrueHD/Atmos bitstream
- Receiver indication: Dolby Atmos

If the receiver instead indicates multichannel PCM,
the audio may have been decoded before transmission.

The receiver's input-signal information is an
important verification point.

## Troubleshooting

If Atmos or DTS:X is not detected:

1. Confirm the file contains the intended audio track.
2. Select that audio track in the player.
3. Confirm the Mac is outputting to the HDMI receiver.
4. Confirm the receiver supports the source codec.
5. Check the receiver's actual input signal.
6. Check for PCM fallback or unsupported-format errors.

Do not infer successful passthrough solely from
the filename or from the source codec label.

## Verification Scope

Verified with packaged Atmos Player v2.2:

- E-AC-3 Atmos: PASS
- TrueHD Atmos: PASS
- DTS:X: PASS

Other formats and combinations should be described
as unverified until tested.

This document describes playback compatibility,
not a certification of licensing compliance or
reproducible builds.

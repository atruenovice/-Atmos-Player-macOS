# Atmos Player for macOS

**A portable media player for Apple Silicon Macs, designed for lossless Dolby TrueHD Atmos audio passthrough over HDMI.**

Atmos Player is an experimental macOS application built around a modified version of [mpv](https://github.com/mpv-player/mpv). It allows compatible movie files to be played directly through an HDMI-connected AV receiver, preserving supported compressed audio bitstreams rather than decoding them to PCM.

## Features

- Dolby TrueHD Atmos passthrough over HDMI
- Dolby Digital (AC-3) passthrough
- DTS passthrough support; DTS-HD support is experimental
- CoreAudio exclusive audio output
- Drag-and-drop movie playback
- Portable application with bundled dependencies
- No separate Homebrew installation required

## Compatibility

**Verified configuration:**
- Apple Silicon Mac
- HDMI connection to a Denon AVR-S970H
- Dolby TrueHD Atmos movie playback
- Receiver confirms Dolby Atmos input

Other receivers, audio formats and macOS versions require additional testing.

## Requirements

- Apple Silicon Mac (ARM64)
- HDMI connection to a compatible AV receiver
- Media files containing supported audio formats
- Compatible macOS installation

The minimum supported macOS version has not yet been established.

## Installation

1. Download the portable ZIP from the GitHub Releases page.
2. Extract the ZIP archive.
3. Move `Atmos Player v2.2.app` to your preferred location.
4. Drag a compatible movie file onto the application icon.

See [Installation Guide](docs/INSTALLATION.md) for detailed instructions, including macOS security approval.

## macOS Security Notice

This is an experimental application that is not notarized by Apple.

macOS Gatekeeper may display a warning or prevent the application from opening because it cannot verify the developer.

Instructions for safely approving the application are provided in the Installation Guide.

Gatekeeper should not be disabled globally.

## Project Status

Atmos Player is experimental and under active development.

Dolby TrueHD Atmos passthrough has been successfully tested with a Denon AVR-S970H.

Testing across additional hardware configurations and macOS versions is ongoing.

## Source and Attribution

This project uses mpv, FFmpeg and other open-source components.

The CoreAudio passthrough modifications originate from mpv commit `59b3763c1`, authored by Riccardo Di Clemente.

See the following directories for project materials:

- `patches/` — Source modifications.
- `launcher/` — Application launcher source.
- `licenses/` — Third-party licensing documents.
- `docs/` — Build configuration and documentation.

Corresponding source materials and third-party licensing information are maintained separately.

## Disclaimer

Atmos Player is an independent experimental project.

It is not affiliated with or endorsed by Dolby Laboratories, Apple Inc., or the mpv project.

Dolby, Dolby Atmos and related trademarks belong to their respective owners.

## Audio Compatibility

See [Supported Audio Formats and HDMI Passthrough](docs/AUDIO-COMPATIBILITY.md) for verified formats, receiver requirements, and troubleshooting.

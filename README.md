# Atmos Player for macOS

An experimental portable media player for Apple Silicon Macs, designed to support Dolby TrueHD Atmos and other compressed audio passthrough formats over HDMI.

Built using a modified version of [mpv](https://github.com/mpv-player/mpv).

## Features

- Dolby TrueHD Atmos passthrough over HDMI
- Dolby Digital and DTS passthrough support
- Experimental E-AC-3 and DTS-HD passthrough support
- Drag-and-drop movie playback
- Portable macOS application

## Requirements

- Apple Silicon Mac (ARM64)
- HDMI connection to a compatible AV receiver
- Compatible media files
- macOS (minimum supported version not yet established)

## Installation

Download the portable ZIP from GitHub Releases when available, extract it, and open the application using a supported movie file.

The application is not Apple-notarized. macOS may display a security warning.

## Status

Experimental. Dolby TrueHD Atmos passthrough has been tested with a Denon AVR-S970H. Compatibility with other receivers and Macs has not yet been established.

## Source and attribution

This project uses mpv, FFmpeg, and other open-source components.

The CoreAudio passthrough changes originate from mpv commit `59b3763c1`, authored by Riccardo Di Clemente.

See `patches/`, `launcher/`, and `licenses/` for the available modifications, launcher source, and third-party licensing documents.

Build instructions and corresponding-source distribution materials are being prepared.

## Disclaimer

Not affiliated with or endorsed by Dolby Laboratories, Apple, or the mpv project.

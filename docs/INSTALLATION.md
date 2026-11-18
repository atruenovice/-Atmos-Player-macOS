# Atmos Player v2 — Installation Guide

## Requirements

- Apple Silicon Mac (M-series processor)
- HDMI connection to a compatible AV receiver
- Media file containing a supported audio format

## Installation

1. Download the portable ZIP from the GitHub Releases page.
2. Extract the ZIP file.
3. Move Atmos Player v2.app to your preferred folder.
4. Drag a movie file onto the application icon to start playback.

No separate Homebrew installation should be required.

## Audio passthrough

The player uses mpv's CoreAudio exclusive output with compressed audio passthrough enabled.

Dolby TrueHD Atmos has been successfully tested with a Denon AVR-S970H.

Other receivers, audio formats, and macOS versions have not been fully tested.

## macOS security

This experimental application is not Apple-notarized.

If macOS blocks the application, open System Settings > Privacy & Security and use the available option to approve opening it, provided you trust the downloaded application.

Do not disable Gatekeeper globally.

## Troubleshooting

- Connect the Mac directly to an HDMI input on the AV receiver where possible.
- Confirm the receiver supports the audio format being played.
- Confirm the movie file contains the expected audio track.
- Check the receiver's input signal information to verify passthrough.

## Known limitations

- Apple Silicon only.
- Experimental software.
- Not tested on a clean Mac.
- Compatibility with other AV receivers is unconfirmed.

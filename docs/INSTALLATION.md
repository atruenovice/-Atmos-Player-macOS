# Atmos Player v2 — Installation Guide

## Requirements

- Apple Silicon Mac (M-series processor).
- HDMI connection to a compatible AV receiver.
- Movie file containing a supported audio format.
- Compatible macOS installation.

No separate Homebrew installation is required. The application includes its required runtime libraries.

## Installation

1. Download the portable ZIP from the project's GitHub Releases page.
2. Extract the ZIP archive.
3. Move `Atmos Player v2.app` to your Applications folder or another preferred location.
4. Connect your Mac to your AV receiver using HDMI.
5. Drag a compatible movie file onto the Atmos Player application icon.

Playback should start automatically.

## Set Atmos Player as the Default Movie Player

You can configure macOS to open MKV movies directly with Atmos Player instead of dragging each movie onto the application.

1. Locate an `.mkv` movie in Finder.
2. Right-click the file and select **Get Info** (or press `Command + I`).
3. Expand the **Open with** section.
4. Select **Atmos Player v2.app**. If it is not listed, choose **Other**, locate the application and select it.
5. Click **Change All…** to make Atmos Player the default application for all MKV files.
6. Confirm the change.

After configuring this, double-clicking an MKV movie should launch Atmos Player automatically, provided macOS recognizes the application as a compatible file handler.

This setting applies to the selected file type. Other formats may need to be configured separately.

## macOS Security and Gatekeeper

**Important:** Atmos Player is an experimental application that has not been notarized by Apple.

When opening the application for the first time, macOS may display a warning stating that Apple cannot verify the developer or that the application cannot be checked for malicious software.

This is an expected consequence of distributing an application without Apple notarization.

If you trust the downloaded application and have obtained it from the project's official GitHub Releases page, you can approve it manually.

### Method 1 — Open using Finder

1. Locate `Atmos Player v2.app` in Finder.
2. Control-click (or right-click) the application.
3. Select **Open**.
4. If another security warning appears, select **Open** again if that option is provided.

After approval, drag a compatible movie file onto the application icon to play it. Double-clicking the application without a movie may briefly show its Dock icon before it exits; this is normal.

### Method 2 — System Settings

If macOS blocks the application:

1. Attempt to launch Atmos Player by dragging a compatible movie file onto its application icon.
2. Open **System Settings**.
3. Select **Privacy & Security**.
4. Scroll down to the Security section.
5. Look for the message indicating that Atmos Player was blocked.
6. If available, select **Open Anyway**.
7. Confirm your decision when prompted.

The available options may differ depending on your macOS version.

**Security recommendation:** Only approve the application if you trust its source and have verified that you downloaded the intended release.

Do not disable Gatekeeper globally or weaken macOS security settings to run this application.

## Audio Passthrough

Atmos Player uses mpv's CoreAudio exclusive output with compressed audio passthrough enabled.

The launcher is configured for:

- Dolby TrueHD
- Dolby Digital (AC-3)
- DTS
- DTS-HD

Dolby TrueHD Atmos passthrough has been successfully tested with a Denon AVR-S970H.

Other receivers and audio formats have not been fully validated.

### Verifying Audio Passthrough

1. Start playback of a movie containing a Dolby TrueHD Atmos soundtrack.
2. Check the AV receiver's input signal information.
3. Confirm that the receiver identifies the incoming signal as Dolby Atmos.

The receiver should report the incoming audio format rather than simply displaying multichannel PCM.

## Troubleshooting

### Application does not open

- Follow the Gatekeeper instructions above.
- Confirm that the ZIP archive was extracted completely.
- Ensure that you are using an Apple Silicon Mac.

### No sound

- Confirm that the Mac is connected to the AV receiver through HDMI.
- Check that the correct HDMI output is selected in macOS.
- Confirm that the receiver supports the soundtrack format.
- Check that the movie contains the expected audio track.

### Receiver displays PCM instead of Dolby Atmos

- Confirm that the selected movie track contains Dolby TrueHD Atmos.
- Confirm that the receiver supports the selected format.
- Check the receiver's incoming signal information.
- Ensure that the playback device is connected directly to the receiver where possible.

## Known Limitations

- Apple Silicon only.
- Experimental software.
- Not Apple-notarized.
- Minimum supported macOS version not yet established.
- Not yet extensively tested across different AV receivers.
- Compatibility with all media files and audio formats is not guaranteed.

## Support and Feedback

Please report reproducible bugs, compatibility issues and playback problems through the project's GitHub Issues page.

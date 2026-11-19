on open movieFiles
	set appPath to POSIX path of (path to me)
	set playerPath to appPath & "Contents/MacOS/mpv"
	set vulkanPath to appPath & "Contents/Resources/vulkan/icd.d/MoltenVK_icd.json"
	
	repeat with movieFile in movieFiles
		set moviePath to POSIX path of movieFile
		set commandText to "VK_DRIVER_FILES=" & quoted form of vulkanPath & " " & quoted form of playerPath & " --no-config --ao=coreaudio_exclusive --audio-spdif=truehd,ac3,dts,dts-hd --autofit-larger=80%x80% --keepaspect-window=yes " & quoted form of moviePath & " >/tmp/atmos-player-portable.log 2>&1 &"
		do shell script commandText
	end repeat
end open


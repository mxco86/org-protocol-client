on open location this_URL
	set EC to "/run/current-system/sw/bin/emacsclient --no-wait "
	set filePath to quoted form of this_URL
	do shell script EC & filePath
	tell application "/run/current-system/Applications/Emacs.app" to activate
end open location
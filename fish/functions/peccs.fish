function peccs
	git format-patch HEAD^ --stdout >patchfile_(date +%s).patch $argv
end

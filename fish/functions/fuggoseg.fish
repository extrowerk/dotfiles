function fuggoseg
	objdump -x $argv | ag NEEDED
end

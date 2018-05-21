function ag
	command ag -i -Q -t -W 70 --color-match 31\;31 --color-line-number 2\;33 --color-path 2\;32 $argv;
end

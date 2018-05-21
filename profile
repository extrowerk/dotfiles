function ag {
	command ag -i -Q -t -W 70 --color-match 31\;31 --color-line-number 2\;33 --color-path 2\;32 "$1";
}

#function ag {
#	command grep --color=auto -r -i "$1" ./*
#}

# Receptben keresés
function inrecipe { 
	/bin/ag /Ports/haikuports/*/*/*.recipe
}

# Képfeltoltés
function chunkio {
	curl -u miqlas:chunkiojelszo -sT "$1" chunk.io
}

# Szövegmegosztó (használata : parancs | tb
alias tb="nc termbin.com 9999"
#
alias hp="/Ports/haikuporter/haikuporter -S -j4 --get-dependencies --no-source-packages"
#

function hp_clean {
	find /Ports/haikuports -type d -name "work-*" -exec rm -rf "{}" \;
	find /Ports/haikuports -type d -name "download" -exec rm -rf "{}" \;
}

function indev {
	/bin/ag "$1" /boot/system/develop/headers
}

function inpatch {
	/bin/ag "$1" /Ports/haikuports -G patch --ignore "work*"
}

function inrecipe {
	/bin/ag "$1" /Ports/haikuports -G recipe --ignore "work*"
}

function searchrecipe {
	query name="*$1*.recipe" -v /Ports/
}

function takarit {
	sed --in-place 's/[[:space:]]\+$//' "$1"
}

function getpr() {
	git fetch origin pull/$1/head:pr$1;
	git checkout pr$1;
}

#GIT DOLGOK
alias peccs="git format-patch -1"
alias gca="git commit -a"
alias grv="git remote -v"
alias gl="git log"

function fuggoseg {
	objdump -x "$1" | ag NEEDED
}

alias irssi="irssi --home=/boot/home/config/settings/irssi"

function gco {
	command git checkout `echo "$1" | cut -d : -f2`
}

export PS1="\[\e[36m\]\w\[\e[m\]\[\e[31m\]❯\[\e[m\]\[\e[33m\]❯\[\e[m\]\[\e[32m\]❯\[\e[m\] "
shopt -s autocd
shopt -s cdspell

# Receptben keresés
function inrecipe { 
	/bin/ag /Ports/haikuports/*/*/*.recipe
}

# Képfeltoltés
function chunkio {
	link=`curl -s -u miqlas:chunkiojelszo -sT "$1" chunk.io`
	echo "$link"
	clipboard --copy="$link"
}

function share {
	link=`curl -s -F"file=@$1" http://0x0.st`
	echo "$link"
	clipboard --copy="$link"
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

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

shopt -s autocd
shopt -s cdspell

CYAN="$(tput setaf 6)"
RED="$(tput setaf 1)"
YELLOW="$(tput setaf 3)"
GREEN="$(tput setaf 2)"
RESET="$(tput sgr0)"
ARROW="❯"
#ARROW=">"
PS1='\[${CYAN}\] \w$(parse_git_branch)\[${RED}\]\[${ARROW}\]\[${YELLOW}\]\[${ARROW}\]\[${GREEN}\]\[${ARROW}\]\[${RESET}\] '
#PS1='\[${CYAN}\] \w$(parse_git_branch) \[${GREEN}\]#\[${RESET}\] '
#PS1='\w$(parse_git_branch) # '

PATH=$PATH:/boot/home/.gem/ruby/2.2.0/bin

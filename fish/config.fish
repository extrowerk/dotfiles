# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactiv
#   ...
# end

set fish_greeting

set PATH $PATH /Ports/haikuporter

#export RUBY_VER=2.2.0
#export GEM_PATH=$HOME/config/non-packaged/lib/gem
#export GEM_HOME="$GEM_PATH/ruby/$RUBY_VER"
#set PATH $PATH $GEM_HOME/bin

#export RUBY_VER=2.2.0
#export GEM_PATH=$HOME/.gem
#export GEM_HOME="$GEM_PATH/ruby/$RUBY_VER"
#set PATH $PATH $GEM_HOME/bin


#export CMAKE_MODULE_PATH="/boot/system/data/cmake/Modules"

#Értesítés hosszan futó programokról
source ~/config/settings/fish/functions/notification.fish &

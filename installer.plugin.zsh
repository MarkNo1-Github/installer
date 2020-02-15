# -*- mode: sh -*-
#
# installer - Installer script to make life easier
# Copyright (c) 2020 MarkNo1-github
# Licensed under the 2-clause BSD license.
#
# This tweak eliminates the need for manually install stuff 
#
# Usage:
#     install_'STUFF'
#     install_env_'NAME'
#
#     install_all


function askRoot(){

[ "$UID" -eq 0 ] || { echo "This script must be run as root."; exit 1;}

}


function install_atom() {

askRoot

sudo add-apt-repository ppa:webupd8team/atom

sudo apt-get update

sudo apt-get install atom

}


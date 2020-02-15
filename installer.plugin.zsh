: '
------------------------------------------------------------------------------
         FILE:  network
  DESCRIPTION:  oh-my-zsh plugin.
       AUTHOR:  marco treglia markno1.github@gmail.com
      VERSION:  1.0.0

Usage:
     install_@Stuff	- replace stuff with the availables programs
     install_all	- install all the availables programs
------------------------------------------------------------------------------
'

: 'Install Atom'
function install_atom() {
  sudo add-apt-repository ppa:webupd8team/atom
  sudo apt-get update
  sudo apt-get install atom
}

: ' Atom Plugins '
function install_atom_plugins(){
  apm install git-log
  apm install git-diff-details
  apm install git-plus
  apm install atom-material-ui
  apm install minimap
  apm install autocomplete-python
}

: 'Install LibUV'
function install_libuv(){
  sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
  cd /tmp/
  git clone https://github.com/libuv/libuv.git
  cd libuv
  sh autogen.sh
  ./configure
  make check
  sudo make install
}

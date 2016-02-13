#!/bin/sh

source env.sh

mkdir -p "$HOME"
git clone git://git.gnome.org/jhbuild _jhbuild
(cd _jhbuild && ./autogen.sh && make -f Makefile.plain DISABLE_GETTEXT=1 install >/dev/null)
ln -s misc/gtk-osx-jhbuildrc "$HOME/.jhbuildrc"
ln -s misc/quodlibet-jhbuildrc-custom "$HOME/.jhbuildrc-custom"
git clone git://git.gnome.org/gtk-mac-bundler _bundler
(cd _bundler && make install)

#!/bin/sh

case "$1" in

  'clean')
    xbuild /t:clean
    echo y|mono Prebuild.exe /clean
    rm -Rf ./bin
  ;;

  *)
    mono Prebuild.exe /target vs2010
  ;;

esac

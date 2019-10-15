#!/bin/bash
#
# Needs GerbV package, see:
#   https://wiki.ubuntuusers.de/CAD
#   http://gerbv.geda-project.org/
#   http://gerbv.sourceforge.net/

formats="ps pdf svg"
inputs=" \
  DrillDrawingThrough.gdo \
  EtchLayer1Top.gdo \
  EtchLayer2Plane.gdo \
  EtchLayer3Plane.gdo \
  EtchLayer4Bottom.gdo \
  GeneratedSilkscreenBottom.gdo \
  GeneratedSilkscreenTop.gdo \
  SoldermaskBottom.gdo \
  SoldermaskTop.gdo \
  SolderPasteBottom.gdo \
  SolderPasteTop.gdo \
  ThruHoleNonPlated.ncd \
  ThruHolePlated.ncd \
  ThruHolePunchPlated.ncd \
"

for f in $formats; do
  for i in $inputs; do
    o="${i%.*}.$f"
    eval gerbv -b '"#FFFFFF"' -f '"#000000"' -x $f -o $o $i
  done
done

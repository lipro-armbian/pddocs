#!/bin/sh
#
# Needs PDFjam package from TeXLiVe, often separated in extra
# install packages, see:
#   https://wiki.ubuntuusers.de/PDFjam
#   https://ctan.org/tex-archive/macros/latex/contrib/pdfpages

inputpdf="A20_Cubietruck_HW_V10_130606.pdf"
outpages="13"
a4outpdf="cubietruck_smt_bottom_130606.pdf"
a4outarg="--paper a4paper --landscape"
metaargs=" \
  --pdftitle \"cubietruck\_smt\_bottom\_130606\" \
  --pdfsubject \"http://dl.cubieboard.org/model/CubieBoard3/CubieBoard3\%20TSD\%20Version/hardware/A20\_Cubietruck\_HW\_V10\_130606.pdf\" \
  --pdfauthor \"CubieTech Limited\" \
  --pdfkeywords \"CubieTruck\" \
"

eval pdfjam $metaargs $a4outarg --outfile $a4outpdf $inputpdf $outpages

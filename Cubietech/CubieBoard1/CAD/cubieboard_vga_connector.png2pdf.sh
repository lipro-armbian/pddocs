#!/bin/sh
#
# Needs ImageMagick with special policy, see:
#  https://askubuntu.com/questions/1081895
#  https://alexvanderbist.com/posts/2018/fixing-imagick-error-unauthorized
#
# Needs PDFjam package from TeXLiVe, often separated in extra
# install packages, see:
#   https://wiki.ubuntuusers.de/PDFjam
#   https://ctan.org/tex-archive/macros/latex/contrib/pdfpages

inputpng="cubieboard_vga_connector.png"
interpdf="`mktemp`.pdf"
a4outpdf="cubieboard_vga_connector.pdf"
a4outarg="--scale 0.5 --paper a4paper --landscape"
metaargs=" \
  --pdftitle \"cubieboard\_vga\_connector\" \
  --pdfsubject \"https://github.com/cubieplayer/static\_files/raw/gh-pages/images/cubieboard\_vga\_connector.png\" \
  --pdfauthor \"CubieTech Limited\" \
  --pdfkeywords \"CubieBoard\" \
"

eval convert -verbose $inputpng $interpdf
eval pdfjam $metaargs $a4outarg --outfile $a4outpdf $interpdf
rm -f $interpdf

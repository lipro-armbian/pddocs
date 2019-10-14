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

inputpng="gpio_defination_huge.jpg"
interpdf="`mktemp`.pdf"
a4outpdf="gpio_defination_cubian.pdf"
a4outarg="--paper a4paper --no-landscape"
metaargs=" \
  --pdftitle \"gpio\_defination\" \
  --pdfsubject \"https://github.com/cubieplayer/static\_files/raw/gh-pages/images/gpio\_defination\_huge.jpg\" \
  --pdfauthor \"CubieTech Limited\" \
  --pdfkeywords \"CubieBoard\" \
"

eval convert -verbose $inputpng $interpdf
eval pdfjam $metaargs $a4outarg --outfile $a4outpdf $interpdf
rm -f $interpdf

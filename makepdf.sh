dir=$(dirname $1)
cd $dir
basename=$(basename $1)
filename="${basename%.*}"
pdflatex -shell-escape -halt-on-error $basename
makeglossaries "$filename"
makeindex "$filename"
pdflatex -shell-escape -halt-on-error $basename
bibtex "$filename"
makeglossaries "$filename"
makeindex "$filename"
pdflatex -shell-escape -halt-on-error $basename
bibtex "$filename"
pdflatex -shell-escape -halt-on-error $basename
pdflatex -shell-escape -halt-on-error $basename
rm -f *.aux *.out *.log *.bbl *.blg *.lst *.idx *~ *.*~* *.backup *.nav *.snm *.toc *.xwm

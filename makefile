.PHONY: asset

OUTPUT_NAME = analyse-notities
MAIN_NAME = main

all: text

text: $(OUTPUT_NAME).pdf

$(OUTPUT_NAME).pdf: individuals main.tex 
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make main.tex

individuals: *.tex

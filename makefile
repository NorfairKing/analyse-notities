.PHONY: asset

OUTPUT_NAME = analyse-notities
MAIN_NAME = main

all: text

text: $(OUTPUT_NAME).pdf

$(OUTPUT_NAME).pdf: individuals main.tex
	#pdflatex $(MAIN_NAME)
	#make --makefile $(MAIN_NAME).makefile -j $(shell grep -c ^processor /proc/cpuinfo)
	latexmk -pdf -pdflatex="pdflatex -shell-escape -halt-on-error -enable-pipes -enable-write18" -use-make $(MAIN_NAME).tex
	cp $(MAIN_NAME).pdf $(OUTPUT_NAME).pdf

individuals: *.tex

.PHONY: assets

OUTPUT_NAME = analyse-notities
MAIN_NAME = main

all: assets text

assets:
	$(MAKE) -C assets

text: $(OUTPUT_NAME).pdf

$(OUTPUT_NAME).pdf: individuals main.tex
	latexmk -pdf -pdflatex="pdflatex -shell-escape -halt-on-error -enable-pipes -enable-write18" $(MAIN_NAME).tex
	cp $(MAIN_NAME).pdf $(OUTPUT_NAME).pdf

individuals: *.tex

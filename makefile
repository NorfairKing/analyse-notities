.PHONY: asset

OUTPUT_NAME = analyse-notities
MAIN_NAME = main

all: text

text: $(OUTPUT_NAME).pdf

$(OUTPUT_NAME).pdf: individuals main.tex 
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make main.tex

individuals: afgeleiden-van-functies-van-r-naar-r.tex \
	afgeleiden-voor-functies-van-c-naar-c.tex \
	algoritmes.tex \
	complexe-getallen.tex \
	continue-functies-op-intervallen-in-rp.tex \
	continue-functies-op-intervallen.tex \
	continuiteit-in-metrische-ruimten.tex \
	continuiteit-in-rp.tex \
	continuiteit-voor-functies-van-r-naar-r.tex \
	continuiteit-voor-functies-van-rp-naar-rp.tex \
	definitie-riemannintegraal.tex \
	de-riemannintegraal.tex \
	eigenschappen-van-de-riemannintegraal.tex \
	elementaire-eigenschappen-en-rekenregels.tex \
	exp-sin-cos.tex \
	functies.tex \
	gehele-getallen.tex \
	getallen.tex \
	header.tex \
	het-concept-afgeleide.tex \
	het-continuiteitsbegrip-in-rp.tex \
	het-continuiteitsbegrip.tex \
	hogere-orde-afgeleiden.tex \
	limieten-van-functies-in-rp.tex \
	limieten-van-functies.tex \
	limieten-van-rijen-in-rp.tex \
	metrische-ruimten-en-continuiteit.tex \
	metrische-ruimten.tex \
	middelwaardestellingen.tex \
	natuurlijke-getallen.tex \
	operaties-met-continue-functies-in-rp.tex \
	operaties-met-continue-functies.tex \
	oproep.tex \
	packages.tex \
	rationale-getallen.tex \
	reeksen-in-c.tex \
	reeksen.tex \
	reeksen-van-functies-machtreeksen.tex \
	reele-getallen.tex \
	relaties.tex \
	rijen-in-r.tex \
	rijen.tex \
	rijen-van-continue-functies-in-rp.tex \
	rijen-van-continue-functies.tex \
	titelpagina.tex \
	topologie-in-metrische-ruimten.tex \
	topologie-in-rp.tex \
	topologie-in-r.tex \
	uitbreidingen-van-de-riemannintegraal.tex \
	uniforme-continuiteit-in-rp.tex \
	uniforme-continuiteit.tex \
	velden.tex \
	volledigheid-van-metrische-ruimten.tex \
	voorbeelden-in-metrische-ruimten.tex

#################################################
#################################################
### Maxime Ulysse Garcia, max@ithake.eu, 2013 ###
###                                           ###
###    Questions and suggestions WELCOMED!    ###
###                                           ###
### This thesis template largely derives from ###
###      Charles Chapple, Robert Castelo      ###
###    Sergio Mendoza and Sergi Castellano    ###
###       Under GNU/GPL copyleft license      ###
###                                           ###
###   FEEL FREE TO USE IT AND IMPROVE IT!!!   ###
###                                           ###
#################################################
################## DISCLAIMER  ##################
#################################################
###              It compiles your             ###
###             thesis but it does            ###
###              NOT write it ;-P             ###
#################################################
#################################################

MAIN	= myThesis
THESIS	= ${MAIN}.pdf
LOGS	= ${MAIN}.aux ${MAIN}.bbl ${MAIN}.blg ${MAIN}.idx ${MAIN}.ilg ${MAIN}.ind ${MAIN}.lof ${MAIN}.log ${MAIN}.lot ${MAIN}.maf ${MAIN}.mtc* ${MAIN}.out ${MAIN}.toc
PNGS	= $(shell find -type f -iname "*.svg" | sed 's/.svg/.png/g')
PDFS	= $(shell find -type f -iname "*.svg" | sed 's/.svg/.pdf/g')
PDF_TEX = $(shell find -type f -iname "*.svg" | sed 's/.svg/.pdf_tex/g')

SVG2PNG	= inkscape $< -e $@ -y 255 -d 180
SVG2PDF	= inkscape -D -z --file=$< --export-pdf=$@ --export-latex

all: remove ${PNGS} ${PDFS} ${THESIS}

${THESIS}:
	pdflatex ${MAIN}
	@while ( grep "Rerun to get cross-references" ${MAIN}.log > /dev/null ); \
	do \
		bibtex ${MAIN}; \
		pdflatex ${MAIN}; \
	done
	makeindex ${MAIN}; \
	pdflatex ${MAIN}
	@while ( grep "Rerun to get outlines " ${MAIN}.log > /dev/null ); \
	do \
		pdflatex ${MAIN}; \
	done
	rm -f ${LOGS}

figures/%.png: figures/%.svg
	$(SVG2PNG)

figures/%.pdf: figures/%.svg
	$(SVG2PDF)

remove:
	rm -f ${THESIS}

clean: remove
	rm -f ${LOGS} ${PNGS} ${PDFS} ${PDF_TEX}

log:
	pdflatex ${MAIN}
	@while ( grep "Rerun to get cross-references" ${MAIN}.log > /dev/null ); \
	do \
		bibtex ${MAIN}; \
		pdflatex ${MAIN}; \
	done
	makeindex ${MAIN}; \
	pdflatex ${MAIN}
	@while ( grep "Rerun to get outlines " ${MAIN}.log > /dev/null ); \
	do \
		pdflatex ${MAIN}; \
	done

rebuild: clean all

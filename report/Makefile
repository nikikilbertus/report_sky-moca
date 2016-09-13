# LaTeX Makefile
TEX = pdflatex -shell-escape
BIB = bibtex
# IDX = makeindex
FILE = project
TEMP = compproject

DEPENDENCIES = $(FILE).tex \
	references.bib \
	titleinfo.tex \
	mycolors.tex \
	chapters/chapter_1.tex \
	chapters/chapter_2.tex \
	chapters/chapter_3.tex \
	chapters/chapter_4.tex

#	$(TEMP).cls \

.PHONY: all clean clear clearall

all: $(FILE).pdf clean

$(FILE).pdf: $(DEPENDENCIES)
	$(TEX) $(FILE).tex
	$(BIB) $(FILE).aux
	$(TEX) $(FILE).tex
	$(TEX) $(FILE).tex
	#$(IDX) $(FILE)

clean:
	rm -f *.aux *.idx *.blg *.log *.out *.mtc* *.ilg *.ind *.maf *.toc *.bbl *.auxlock chapters/*.aux *.gnuplot *.table

clear:
	rm -f $(FILE).pdf

clearall:
	rm -f $(FILE).pdf
	rm -f cache/*

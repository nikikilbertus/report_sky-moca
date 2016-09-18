# LaTeX Makefile
TEX = pdflatex -shell-escape
BIB = bibtex
# IDX = makeindex
FILE = project
TEMP = compproject

DEPENDENCIES = $(FILE).tex \
	project.cls \
	references.bib \
	titleinfo.tex \
	mycolors.tex \
	commands.tex \
	tikzcommands.tex \
	chapters/chapter_1.tex \
	chapters/chapter_2.tex \
	chapters/chapter_3.tex

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

clearall: clean clear
	rm -f cache/*

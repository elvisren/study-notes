SOURCES := note.tex probability.tex linear_algebra.tex topology.tex analysis.tex

PDFS := $(SOURCES:.tex=.pdf)

ENGINE := pdflatex -shell-escape

all: $(PDFS)

%.pdf: %.tex
	$(ENGINE) $<
	$(ENGINE) $<

clean:
	rm -f *.acn *.acr *.alg *.aux *.bbl \
			*.blg *.dvi *.fdb_latexmk *.glg *.glo \
			*.gls *.idx *.ilg *.ind *.ist \
			*.lof *.log *.lot *.maf *.mtc \
			*.mtc0 *.nav *.nlo *.out *.pdfsync \
			*.pyg *.snm *.synctex.gz *.thm *.toc \
			*.vrb *.xdy *.tdo

distclean: clean
	rm -f $(PDFS)

.PHONY: all clean distclean

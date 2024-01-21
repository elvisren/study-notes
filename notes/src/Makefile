all: one la clean_rest

one:
	xelatex all
	makeindex all.idx
	xelatex all
	xelatex all

la:
	xelatex linear_algebra
	makeindex linear_algebra.idx
	xelatex linear_algebra
	xelatex linear_algebra

clean_rest:
	rm *.aux *.idx *.ilg *.ind *.log *.out *.toc

clean_pdf:
	rm *.pdf

clean: clean_rest clean_pdf

.PHONY: clean

clean:
	$(RM) *.aux *.log *.fls *.out *.fdb_latexmk *.xdv *.tdo *.bbl *.blg *.toc

%.pdf: %.latex
	latexmk -pdf -xelatex -use-make -pvc $<

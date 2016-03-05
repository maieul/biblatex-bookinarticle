all: *tex *bib
	xelatex --shell-escape biblatex-bookinother.tex
	biber biblatex-bookinother
	biber -output-format=dot --dot-include=crossref,field  biblatex-bookinother
	dot -Tpdf biblatex-bookinother.dot -o biblatex-bookinother-crossref.pdf
	xelatex --shell-escape biblatex-bookinother.tex

clean:bookinother
	$(MAKE) -C documentation clean
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*

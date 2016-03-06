all: *tex *bib
	python3 generate-crossref-graphs.py
	xelatex --shell-escape biblatex-bookinother.tex
	biber biblatex-bookinother
	xelatex --shell-escape biblatex-bookinother.tex

clean:bookinother
	$(MAKE) -C documentation clean
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*

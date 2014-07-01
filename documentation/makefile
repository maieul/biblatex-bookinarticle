all: *tex *bib
	xelatex --shell-escape biblatex-bookinarticle.tex
	xelatex --shell-escape biblatex-bookinarticle.tex
	xelatex --shell-escape example.tex
	biber example
	xelatex --shell-escape example.tex

clean:bookinarticle
	$(MAKE) -C documentation clean
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*

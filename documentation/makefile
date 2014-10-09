all: *tex *bib
	xelatex --shell-escape biblatex-bookinarticle.tex
	biber biblatex-bookinarticle
	xelatex --shell-escape biblatex-bookinarticle.tex

clean:bookinarticle
	$(MAKE) -C documentation clean
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*

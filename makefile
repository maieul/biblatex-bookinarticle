FILES = *.sty documentation   makefile README


dist: all
	rm -rf biblatex-bookinarticle
	mkdir biblatex-bookinarticle
	cp README *bbx *dbx *makefile biblatex-bookinarticle
	mkdir biblatex-bookinarticle/documentation
	cp documentation/*tex documentation/*bib documentation/*pdf documentation/makefile  biblatex-bookinarticle/documentation
	$(RM) ../biblatex-bookinarticle.zip
	zip -r ../biblatex-bookinarticle.zip biblatex-bookinarticle


clean:
	$(MAKE) -C documentation clean
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*

all:  documentation/biblatex-bookinarticle.tex documentation/example.bib
	$(MAKE) -C documentation all
all: paper.pdf

paper.pdf: paper.tex paper.bib
	pdflatex paper
	bibtex   paper
	pdflatex paper
	pdflatex paper
	@echo
	@echo "********* Latex Summary *********"
	@grep -i error paper.log || true
	@grep -i warning paper.log || true

clean:
	rm -f *~ *.aux *.dvi *.ins *.log *.dvi paper.pdf paper.ps *.bbl *.blg

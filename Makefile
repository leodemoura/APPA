SMTProofs.pdf: *.tex *.bib
	pdflatex SMTProofs
	bibtex SMTProofs
	pdflatex SMTProofs
	pdflatex SMTProofs
clean:
	rm SMTProofs.aux SMTProofs.bbl SMTProofs.blg SMTProofs.out SMTProofs.log

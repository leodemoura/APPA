FILE=SMTProofs
BIB=SMTProofs.bib

all: ${FILE}.pdf

clean:
	rm -f *.aux *.log *.dvi ${FILE}.pdf ${FILE}.pdf *.bbl ${FILE}.ps ${FILE}.blg ${FILE}.out

${FILE}.dvi: ${FILE}.tex ${BIB} 
	latex ${FILE}.tex
	bibtex ${FILE}
	latex ${FILE}.tex
	latex ${FILE}.tex

${FILE}.ps: ${FILE}.dvi 
	dvips -t a4 -Ppdf -G0 -o ${FILE}.ps ${FILE}.dvi 

${FILE}.pdf: ${FILE}.ps 
	ps2pdf -sPAPERSIZE=a4  -dCompatibilityLevel=1.4 -dSubsetFonts=true -dEmbedAllFonts=true  -dPDFSETTINGS=/prepress ${FILE}.ps ${FILE}.pdf

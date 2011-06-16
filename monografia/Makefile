FILE=monografia
LATEX=${FILE}.tex
DVI=${FILE}.dvi
PS=${FILE}.ps
PDF=DNS.pdf

forsure: all

all: pdf
	mv -f ${FILE}.pdf ${PDF}

pdf:ps
	ps2pdf ${PS}

ps:dvi
	dvips ${DVI}


dvi: ${LATEX} bib
	latex ${LATEX}

bib: ${LATEX}
	latex ${LATEX}
	bibtex ${LATEX}
	latex ${LATEX}

clean:
	rm -rf *.aux *.dvi *~ *.log *.ps
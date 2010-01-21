FILE=mono
LATEX=${FILE}.tex
DVI=${FILE}.dvi
PS=${FILE}.ps
PDF=DNS.pdf

all: pdf
	mv -f ${FILE}.pdf ${PDF}

dvi: ${LATEX}
	latex ${LATEX}

ps:dvi
	dvips ${DVI}

pdf:ps
	ps2pdf ${PS}

clean:
	rm -rf *.aux *.dvi *~ *.log *.ps ${PDF}
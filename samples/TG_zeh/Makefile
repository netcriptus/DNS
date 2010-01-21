ARCH=tg
OUT=TG-Leandro-Zatesko-GRR20052322
PAPERTYPE=a4

ALL: Output/$(OUT).pdf order

Output/$(OUT).pdf: Output/$(OUT).ps
	ps2pdf Output/$(OUT).ps Output/$(OUT).pdf

Output/$(OUT).ps: capa.ps folhaderosto.ps $(ARCH).ps
	psjoin capa.ps folhaderosto.ps $(ARCH).ps > Output/$(OUT).ps

capa.ps: capa.dvi
	dvips -G0 capa.dvi -o capa.ps

capa.dvi: Sources/Miscellaneous/capa.tex capa.aux
	latex Sources/Miscellaneous/capa.tex

capa.aux: Sources/Miscellaneous/capa.tex
	latex Sources/Miscellaneous/capa.tex

folhaderosto.ps: folhaderosto.dvi
	dvips -G0 folhaderosto.dvi -o folhaderosto.ps

folhaderosto.dvi: Sources/Miscellaneous/folhaderosto.tex folhaderosto.aux
	latex Sources/Miscellaneous/folhaderosto.tex

folhaderosto.aux: Sources/Miscellaneous/folhaderosto.tex
	latex Sources/Miscellaneous/folhaderosto.tex

$(ARCH).ps: $(ARCH).dvi
	dvips -G0 $(ARCH).dvi -o $(ARCH).ps

$(ARCH).dvi: $(ARCH).tex $(ARCH).ind $(ARCH).bbl
	latex $(ARCH).tex
	latex $(ARCH).tex

$(ARCH).ind: $(ARCH).idx
	fazindex $(ARCH).idx

$(ARCH).idx: $(ARCH).tex
	latex $(ARCH).tex

$(ARCH).bbl: $(ARCH).tex $(ARCH).bib
	bibtex $(ARCH)

order:
	find . -maxdepth 1 -regextype egrep \
	-iregex '.*\.(aux|bbl|blg|idx|ilg|ind|ifi|log|out|toc|dvi|ps|pdf)' \
	-exec mv '{}' Logs \;

clean: order
	rm -f Logs/* Output/*

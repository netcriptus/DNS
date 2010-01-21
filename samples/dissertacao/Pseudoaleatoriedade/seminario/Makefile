ARCH=apresentacao
OUT=ARG-Seminario-Pseudoaleatoriedade-Leandro-Zatesko

ALL: Output/$(OUT).pdf order

Output/$(OUT).pdf: Output/$(OUT).ps
	ps2pdf Output/$(OUT).ps Output/$(OUT).pdf

Output/$(OUT).ps: Output/$(OUT).dvi
	dvips -G0 Output/$(OUT).dvi -o Output/$(OUT).ps

Output/$(OUT).dvi: $(ARCH).dvi
	mv $(ARCH).dvi Output/$(OUT).dvi

$(ARCH).dvi: $(ARCH).tex $(ARCH).bbl
	latex $(ARCH).tex
	latex $(ARCH).tex
	latex $(ARCH).tex

$(ARCH).bbl: $(ARCH).tex $(ARCH).bib
	latex $(ARCH).tex
	bibtex $(ARCH)

order:
	find . -maxdepth 1 -regextype egrep -iregex \
	'.*\.(nav|snm|aux|bbl|blg|idx|ilg|ind|ifi|log|out|toc|dvi|ps|pdf)' \
	-exec mv '{}' Logs \;

clean: order
	rm -f Logs/* Output/*

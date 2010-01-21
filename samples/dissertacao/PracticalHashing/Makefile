ARCH=practical
OUT=Rascunho-Notas-Metodo-Hashing-LeandroZatesko
PAPERTYPE=a4

ALL: Output/$(OUT).pdf order

Output/$(OUT).pdf: Output/$(OUT).ps
	ps2pdf Output/$(OUT).ps Output/$(OUT).pdf

Output/$(OUT).ps: $(ARCH).dvi
	dvips -G0 $(ARCH).dvi -o Output/$(OUT).ps

$(ARCH).dvi: $(ARCH).tex
	latex $(ARCH).tex
	latex $(ARCH).tex

order:
	find . -maxdepth 1 -regextype egrep -iregex \
	'.*\.(aux|bbl|blg|idx|ilg|ind|ifi|log|out|toc|dvi|ps|pdf|los|lsg)' \
	-exec mv '{}' Logs \;

clean: order
	rm -f Logs/* Output/*

.PHONY: FORCE_MAKE

all: bd-screen.pdf bd-print.pdf bd-print-cover.pdf index.html

print: bd-print.pdf

%.pdf: %.tex olprevision.tex FORCE_MAKE
	latexmk -dvi- -ps- -pdf $<

index.html: README.md  webpage-template.html bd-screen.pdf
	convert bd-screen.pdf[0] bd.png
	pandoc --template webpage-template.html -f markdown -t html -o index.html README.md

olprevision.tex: FORCE_MAKE
	../../misc/makeolprevision ../..


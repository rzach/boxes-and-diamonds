.PHONY: FORCE_MAKE

all: bd-screen.pdf

print: bd-print.pdf

%.pdf: %.tex olprevision.tex FORCE_MAKE
	latexmk -dvi- -ps- -pdf $<

index.html: README.md  webpage-template.html
	convert bd-screen.pdf[0] bd.png
	pandoc --template webpage-template.html -f markdown -t html -o index.html README.md

olprevision.tex: FORCE_MAKE
	grep shash ../../.git/gitHeadInfo.gin |sed 's/[^{]*{\([^}]*\)},/\1/' > olprevision.tex
	grep authsdate ../../.git/gitHeadInfo.gin |sed 's/[^{]*{\([^}]*\)},/(\1)./' >> olprevision.tex

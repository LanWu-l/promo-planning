.PHONY: all pdf or-preview arxiv clean

all: pdf

pdf:
	latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build main.tex

or-preview:
	latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build/or-preview or-preview.tex

arxiv: pdf
	rm -f build/arxiv-source.zip
	zip -q -r build/arxiv-source.zip main.tex informs3.cls or-preamble.tex metadata.tex abstract.tex keywords.tex body.tex disclosure.tex references.tex appendix-layout.tex appendices.tex sections appendices tables figures -x '*/.DS_Store'

clean:
	latexmk -C -outdir=build main.tex

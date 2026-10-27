.PHONY: all pdf arxiv clean

all: pdf

pdf:
	latexmk -xelatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build main.tex

arxiv: pdf
	rm -f build/arxiv-source.zip
	zip -q -r build/arxiv-source.zip *.tex sections appendices tables figures -x '*/.DS_Store'

clean:
	latexmk -C -outdir=build main.tex

# Promotion frequency manuscript

This repository contains the sources and figure assets needed to compile the
preprint. Research code, data, reviews, earlier drafts and the previous Git
history are preserved separately in ../supporting.

## Build the PDF

Use XeLaTeX with a full TeX Live installation that provides Libertinus and the
standard packages loaded in preamble.tex and layout.tex.

    make

The output is build/main.pdf. The equivalent command is

    latexmk -xelatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build main.tex

A direct XeLaTeX build can be run three times from this directory.

    mkdir -p build
    xelatex -no-shell-escape -interaction=nonstopmode -halt-on-error -output-directory=build main.tex

The bibliography is complete in references.tex. No BibTeX, Biber, external data
or research scripts are needed.

## Edit the manuscript

Edit the main sections in sections and the supporting proofs and results in
appendices. The files body.tex and appendices.tex set their reading order.
The files abstract.tex, keywords.tex and disclosure.tex contain the remaining
front matter and disclosure. The generated table fragments are frozen in
tables, and figures contains only the four assets used by the paper.

The author names, affiliations and order are set in metadata.tex. PaperAuthors
controls the visible title block, and PaperAuthorNames supplies the plain text
PDF metadata. PaperDate is empty so the PDF has no changing compilation date.

## Use a journal template

Use the destination template's document class, title block and layout. Keep
the content files and copy the relevant package, notation and theorem
definitions from preamble.tex into that template's preamble. Reuse existing
definitions where the template supplies them. The preprint's fonts and margins
are confined to layout.tex and need not be copied.

Insert abstract.tex in the template's abstract field. Insert body.tex where
the main paper begins and references.tex where the bibliography belongs.
Apply the template's appendix settings in place of appendix-layout.tex and
insert appendices.tex. Keep the relative content, tables and figures paths.
The content files contain no INFORMS class commands.

## Prepare the arXiv archive

    make arxiv

Upload build/arxiv-source.zip. Its root contains main.tex with all required
inputs and four figure assets. It omits the generated manuscript PDF, build
files, Git metadata, documentation and research material.

Select main.tex as the main file, XeLaTeX as the compiler and TeX Live 2025 in
the arXiv submission interface. The fonts are loaded by filename from TeX Live.
The current arXiv guidance is available at
[TeX Live at arXiv](https://info.arxiv.org/help/faq/texlive.html) and
[TeX source preparation](https://info.arxiv.org/help/submit_tex.html).

The prepared archive must still be processed and its generated PDF reviewed
in arXiv. This repository does not upload or submit the paper.

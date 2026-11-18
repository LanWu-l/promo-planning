# Operations Research manuscript

The default manuscript uses the legacy `informs3.cls` with the Operations
Research option and anonymous review formatting. Research code, earlier drafts,
data, and verification records are preserved in `../supporting`.

## Build

    make

Output: `build/main.pdf`, containing the main paper, references, submission
tables, and electronic companion. The equivalent command is:

    latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build main.tex

Use pdfLaTeX with a full TeX Live installation. The local `informs3.cls` supplies
the journal fonts, margins, headings, and front matter. No BibTeX, Biber, external
data, or research scripts are needed to compile the manuscript.

`make or-preview` is retained as a compatibility target and builds the same
manuscript through `or-preview.tex` into `build/or-preview/or-preview.pdf`.

## Edit

- `main.tex`: OR class selection and title-page fields.
- `or-preamble.tex`: packages, author-year citations, theorem definitions, and
  submission-table handling.
- `abstract.tex`, `keywords.tex`: the accepted OR abstract and keywords.
- `sections/`, `appendices/`: content, ordered by `body.tex` and `appendices.tex`.
- `references.tex`: complete alphabetical author-year bibliography.
- `appendix-layout.tex`: INFORMS electronic-companion switch.
- `tables/`, `figures/`: frozen table fragments and figure assets.

The former article-class `preamble.tex` and `layout.tex` are retained as legacy
files and are not loaded by `main.tex`. `abstract-or-draft.tex` now forwards to
`abstract.tex` so there is only one maintained abstract.

## Review formatting

The default is `opre,blindrev` with 11-point, one-and-a-half spacing. The author
names and affiliations remain recorded in `metadata.tex`; the review PDF omits
them and leaves PDF author metadata empty. Main-paper tables are collected after
the references, while figures remain embedded. EC tables accompany their
supplementary discussion, with separate EC section, equation, table, figure, and
page numbering.

The default PDF preserves the blue revision text. For a black review copy,
define `\CleanCopy` before inputting `main.tex` in a local wrapper. The content
sources retain their revision commands.

Area of review and subject classifications are intentionally unset. See
[OR-PREVIEW.md](OR-PREVIEW.md) for the format migration and remaining editorial
items, including the introduction's notation and the submission-length target.

## Source archive

    make arxiv

This creates `build/arxiv-source.zip` with the OR class and the complete active
source tree. It omits unused layout/preview files, generated PDFs, research code,
and build files. Select `main.tex` as the main file and pdfLaTeX as the compiler.
The archive must still be processed and its output reviewed by the upload system;
this repository does not submit or upload the paper.

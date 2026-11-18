# Operations Research format notes

Build the default OR manuscript with `make`; the output is `build/main.pdf`.
The former preview target `make or-preview` remains available and uses the same
source through a compatibility wrapper.

The default `main.tex` uses `opre,blindrev` and the legacy INFORMS class copied
unchanged from `../supporting/legacy-project/informs3.cls` (version 0.95,
2012-08-09). The revised 185-word abstract is maintained in `abstract.tex`.
The former abstract draft forwards to that file.

## Adaptation

- Uses the class's 11-point, one-and-a-half spacing command once. It does not
  reproduce the legacy draft's extra `linespread{1.5}`.
- Uses the class's fonts, margins, headings, front matter, and EC switch.
- Uses author-year citations; bare citations in the shared body are treated as
  parenthetical, while textual citations retain `citet`.
- Omits visible author names and affiliations, uses anonymous running heads,
  clears PDF author metadata, and retains black text except for the newly approved
  writing and scope corrections, which are marked in blue.
- Retains the existing section-based theorem numbering; the class supports alternative numbering.
- Starts the electronic companion with its own section, equation, table, figure,
  and page labels. Shared cross-references resolve within the combined PDF.
- Includes the revised 185-word, text-only abstract emphasizing the common decision
  criterion rather than a list of results. It makes no claim of being first to
  optimize frequency and arrangement or to introduce finite customer memory.

## Requirements checked on 2026-11-11

The current [OR submission guidelines](https://pubsonline.informs.org/page/opre/submission-guidelines)
specify a one-paragraph abstract of at most 200 words, 11-point type,
one-and-a-half spacing, one-inch margins, soft double-anonymous review, author-year
references, and an introduction without mathematical notation. Regular papers
are limited to 30 pages excluding references; lengthy papers are generally at
most 40. The EC should not exceed the manuscript length. The guidelines also
request tables together after the references, with figures embedded in the text.

The [INFORMS style portal](https://pubsonline.informs.org/authorportal/latex-style-files)
links the official [OR template archive](https://pubsonline.informs.org/opre/latex-template).
The manuscript uses the class requested from the legacy folder; the class has not
been replaced with a newly downloaded archive. The older template mirrored on
Overleaf recommends double spacing, whereas the current journal instructions
explicitly say one-and-a-half; the manuscript follows the journal instructions.

## Remaining editorial decisions before submission

The main-paper tables are now collected after the reference list; figures and EC
tables remain embedded in their relevant discussions. The default build uses
pdfLaTeX and produces an anonymous PDF with the latest approved wording changes in blue. After relocating proofs, shortening the engagement, lag-effects, multiplicative, approximation, and conclusion text, consolidating exact computation and its limits, generalizing the reference-price conditions, implementing the three-subsection numerical study, and condensing the affine appendix illustration,
the build has 30 text pages, 3 reference pages, one page of main-paper tables,
and a 30-page EC: 31 main-paper pages excluding references, 64 PDF pages in total.
The numerical specifications and promotion-budget table are consolidated in EC.6;
the main text retains both figures and the simple-policy performance table.
Reaching a 30-page main paper now requires one further main-paper page of reduction;
the EC is already 30 pages.
The redundant three-profile affine frequency figure has been removed from the
manuscript; its source asset is retained. The compact affine example and revenue
formula were checked in exact arithmetic over 124 cycles. The consistency pass
also clarified the complexity input encoding, distinguished the nonlinear
reference-price exponent from the retention ratio, and updated the roadmap.
The approved second round of appendix cuts retained three fixed-count comparison
cases (affine, threshold, and multiplicative) and removed the redundant
single-block counterexample. The multiplicative long-period example remains.
The approved writing pass reduced repeated introduction summaries, converted the
telescoping lemma into an identity and removed its redundant proof, and clarified
the hardness scope, reference-price conclusions, and promotional-period budgets.
The introduction now connects its questions, technical difficulty, core rule,
and three contribution groups before a separate Related literature subsection.
Further content removals require the author's approval. Embedded figures retain
their data-encoding colors, as explicitly requested by the author.
Remaining editorial work:

- Rewrite the introduction's symbolic statements in words, moving definitions
  and formulas to the model and structural sections.
- Decide between a regular paper (30-page target) and a lengthy paper. Measure
  page counts after the editorial cuts; do not shrink fonts or spacing.
- Decide which essential proofs belong in regular appendices rather than the
  online-only EC. Produce the separate EC upload after this split is settled.
- Select the area of review and subject classifications. Markets, Platforms,
  and Revenue Management is a relevant area to consider; the manuscript leaves the
  choice unset instead of making an author decision.
- Check table abbreviations, final figure legibility, and references against the
  journal's style. The INFORMS class reports some font-shape substitutions.
- Consolidate code, dependencies, seeds, and verification instructions into the
  reproducibility package required by the OR code-and-data policy.

Useful comparison papers for abstract positioning include
[Cohen-Hillel et al. (2023)](https://doi.org/10.1287/mnsc.2022.4477), which already
studies bounded-memory promotion planning, and
[Besbes and Lobel (2015)](https://doi.org/10.1287/mnsc.2014.2049), which optimizes
cyclic price policies with strategic customers. The abstract therefore
emphasizes the shared structural criterion under flexible nonlinear count-based
demand, including positive and negative historical effects.

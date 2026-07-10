# [Project Name]

**Top-level goal:** [Crisp, one-sentence objective.]

**DRI:** [Lead PhD student or postdoc]
**PI / high-level strategy:** Walter Dempsey
**Primary communication:** [#project-channel]
**Project Landing Page (single source of truth):** [Google Doc link]
**Methodology working doc:** [Overleaf link]
**Grant alignment:** [Link to relevant planning docs]

## Layout

* `R/`, `python/` — analysis code. Use whichever fits the project; delete the other.
* `simulations/` — one subdirectory per study, each with a README stating what question the study answers.
* `data/` — gitignored; its README points to the canonical data location.
* `writing/` — LaTeX source, kept in sync with the Overleaf project; includes `lab-notation.sty`, the shared notation preamble.
* `renv.lock` / `requirements.txt` — pinned environment. Pin from day one (`Rscript scripts/bootstrap-renv.R` sets up R).
* `.github/workflows/` — CI stubs: renv/requirements must restore cleanly; tests run once they exist.

See the lab handbook: https://wdempsey.netlify.app/lab/

# Writing

LaTeX source for the manuscript. Two skeletons are provided — keep the one
that fits, delete the other, and name the keeper `main.tex`:

* `main.tex` — general methods paper: Introduction (with a Contributions
  subsection), Related Work, Method (Notation / Core method / Theory),
  Simulations, Application.
* `main-causal.tex` — estimand-driven causal paper: Setup and Estimand,
  Identification, Estimation, Simulations, Application.

Both compile as-is and pull in `lab-notation.sty`, the shared lab notation
preamble (`\usepackage{lab-notation}`). Extend the preamble locally if
needed, but don't redefine existing macros; if a definition seems wrong,
raise it so the fix propagates to every project.

## Syncing with Overleaf

U-M's institutional Overleaf license includes the premium sync features
(log in with your umich email). Pick one of these, in order of preference:

### Option A — Overleaf git remote (recommended)

Every Overleaf project is itself a git repo. This keeps `writing/` synced
without exposing the rest of the repo to Overleaf.

1. In Overleaf: Menu → Git, copy the clone URL
   (`https://git.overleaf.com/<project-id>`).
2. From the repo root:

   ```bash
   git remote add overleaf https://git.overleaf.com/<project-id>
   # push writing/ to Overleaf:
   git subtree push --prefix=writing overleaf master
   # pull Overleaf edits back:
   git subtree pull --prefix=writing overleaf master --squash
   ```

3. Push after local edits; pull after Overleaf sessions. Don't edit both
   sides between syncs.

### Option B — Overleaf GitHub Sync

Overleaf's GitHub integration (Menu → GitHub) links an Overleaf project to
the **whole repository**, not a subfolder — Overleaf will show `R/`,
`simulations/`, etc. If you use it, set `writing/main.tex` as the main
document (Menu → Settings → Main document) and ignore the rest.

### Option C — Manual (fallback)

If neither works, Overleaf is canonical: link the Overleaf project in the
top-level README, and periodically download the project zip into
`writing/` so the repo holds a recent snapshot.

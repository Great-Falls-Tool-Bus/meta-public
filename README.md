# meta-public

Public releases of documents built in the Great Falls Tool Bus meta repository
(LaTeX sources compiled with rules_tectonic). This repository holds no sources:
each release carries the compiled PDFs and a `SHA256SUMS` file, and the release
is created by the meta publish workflow from a tagged, signed commit.

Consumers pin an asset by its release URL and sha256 (the public site fetches
`member-agreement-v1.pdf` and `code-of-conduct.pdf` this way at build time).

Tags are per document and semantic: `member-agreement/v1.0.0`,
`code-of-conduct/v1.0.0`. The release title carries the build date; the
document's own rendered date is the one a reader sees.

# meta-public

Public releases of documents built in the Great Falls Tool Bus meta repository.
rules_tectonic compiles their LaTeX sources. This repository holds no sources:
each release carries the compiled PDFs and a `SHA256SUMS` file, and the meta
publish workflow creates the release from a tagged, signed commit.

Consumers pin an asset by its release URL and sha256. The public site fetches
`member-agreement-v1.pdf` and `code-of-conduct.pdf` this way at build time.

Each document has its own semantic tags: `member-agreement/v1.0.0` and
`code-of-conduct/v1.0.0`. The release title carries the build date. The
document's rendered date is the one a reader sees.

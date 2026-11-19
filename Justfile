default:
    @just --list

setup: hooks-install

hooks-install:
    #!/usr/bin/env bash
    set -euo pipefail
    git config --local core.hooksPath .githooks
    git config --local remote.pushDefault origin
    if git remote get-url upstream >/dev/null 2>&1; then
        git remote set-url --push upstream DISABLED-fork-first
    fi
    if [[ "$(git config --get commit.gpgsign || true)" != true ]]; then
        echo 'Configure commit signing before pushing. See CONTRIBUTING.md.' >&2
    fi

hooks-check:
    #!/usr/bin/env bash
    set -euo pipefail
    tmp=$(mktemp -d)
    trap 'rm -rf "$tmp"' EXIT
    git clone --quiet --depth 1 --filter=blob:none --no-checkout --branch main https://github.com/Great-Falls-Tool-Bus/.github.git "$tmp/mirror"
    git -C "$tmp/mirror" checkout --quiet HEAD -- githooks
    git -c core.filemode=true diff --no-index --exit-code -- "$tmp/mirror/githooks" .githooks

hooks-test:
    bash .githooks/test.sh

check: hooks-check hooks-test

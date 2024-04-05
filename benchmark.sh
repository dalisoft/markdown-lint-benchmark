#!/bin/sh
set -eu

# Exports for binaries access
export PATH="./node_modules/.bin:$PATH"

md_files="README"

prepare() {
  /bin/rm -rf "$HOME/Library/Caches/deno/fmt_*"
}

# shellcheck disable=SC3045
export -f prepare

# shellcheck disable=SC2034
for item in ${md_files}; do
  file="data/$item.md"
  hyperfine --runs 3 "markdownlint-cli2 $file" "prettier -c $file" "./node_modules/dprint/bin.js check $file" "./node_modules/dprint-rs-npm/dprint check $file" --export-markdown "results/$item.md" --prepare prepare
done

#!/bin/bash
# Orphans from the work -> htc rename: chezmoi does not remove targets that
# were dropped from the source state, so machines provisioned before the
# rename still have work.toml/work.Brewfile on disk, where mise merges
# conf.d/*.toml and re-installs the old htc-only brew packages.
rm -f "${HOME}/.config/mise/conf.d/work.toml" "${HOME}/.config/homebrew/work.Brewfile"

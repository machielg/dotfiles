#!/bin/bash
set -euo pipefail

path="$HOME/.config/git/chezmoi.gitconfig"
if ! git config --global --get-all include.path 2>/dev/null | grep -Fxq "$path"; then
	git config --global --add include.path "$path"
fi

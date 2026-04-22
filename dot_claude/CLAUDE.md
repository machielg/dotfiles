## Git workflow

- Commit after every logically complete change: a passing test, a working function, a successful refactor step, a fixed bug. Don't batch unrelated changes into one commit.
- Use conventional commit messages (`feat:`, `fix:`, `refactor:`, `chore:`, `docs:`, `test:`).
- Never commit broken code. "Incomplete feature behind a flag" is fine; "half-refactored and doesn't compile" is not.
- **Always `git push` immediately after committing.** This project is worked on from multiple machines — unpushed commits sitting on one machine block progress on another. If the push fails (offline, auth), note it and continue, but retry at the next commit.
- If pre-commit hooks reformat files, stage the reformatted files and amend the commit (`git add -u && git commit --amend --no-edit`) rather than creating a second "fix formatting" commit. Then push.
- Before starting work, run `git pull --rebase` to get any commits made from another machine.

## Planning

- For any task larger than a single edit, first produce a short plan broken into steps. Each step should end in a commit.
- Implement and commit each step before moving to the next. Don't accumulate multiple steps worth of changes before committing.

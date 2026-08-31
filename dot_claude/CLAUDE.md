## Git workflow

- Use conventional commit messages (`feat:`, `fix:`, `refactor:`, `chore:`, `docs:`, `test:`).
- Never commit broken code. "Incomplete feature behind a flag" is fine; "half-refactored and doesn't compile" is not.
- If pre-commit hooks reformat files, stage the reformatted files and amend the commit (`git add -u && git commit --amend --no-edit`) rather than creating a second "fix formatting" commit. Then push.
- Don't add 'by Claude' or other mention of claude in the commonts

## Planning

- For any task larger than a single edit, first produce a short plan broken into steps. Each step should end in a commit.
- Implement and commit each step before moving to the next. Don't accumulate multiple steps worth of changes before committing.

## Python development

### Exceptions
- Do not shadow built in exceptions
- Never swallow exceptions
- No defensive programming
- Fail fast
- Avoid using Exceptions for flow logic
- Default to creating classes and functions inside of them, also helper functions
- Never write -> None: as return type

### Python Code Style
- Use Clean Code principles
- Use Classes unless the function is truly standalone

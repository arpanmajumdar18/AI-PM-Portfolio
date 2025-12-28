# Prompt Library — Private Prompts

This repository stores a personal prompt library (Word document) and minimal repo metadata.

## Contents
- README.md — this file
- Prompt Library.docx — main prompt archive (binary Word file)
-.gitignore — ignore rules

## Purpose
Keep the prompt library under version control and track metadata. The primary content is a binary Word document; consider exporting to Markdown/Plain text for diff-friendly history.

## Quick usage
1. Configure Git identity (only required once for commits in this repo):

```powershell
git config user.name "Your Name"
git config user.email "you@example.com"
```

2. Make the initial commit (if not already done):

```powershell
git add .gitignore README.md "Prompt Library.docx"
git commit -m "Initial commit"
```

3. Check status:

```powershell
git status
```

## Notes
- The primary file `Prompt Library.docx` is a binary file — diffs are not human-friendly. If you plan to track changes over time, export to Markdown or plain text and commit that alongside the .docx.
- If you want, I can set the local Git `user.name`/`user.email` and finish the initial commit.

---
Generated on 2025-12-28.

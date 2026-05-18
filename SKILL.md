---
name: new-and-noteworthy
description: Generates "New and Noteworthy" summaries for project updates. Use when you need to summarize recent changes, update NEW_AND_NOTEWORTHY.md, or explain what has changed between two git references (branches, tags, or commits).
---

# New and Noteworthy

This skill helps Gemini CLI generate professional, categorized summaries of recent changes in the codebase by analyzing git logs and diffs.

## Workflow

To generate a "New and Noteworthy" report, follow these steps:

### 1. Gather Data

Identify the range of changes. Usually this is `master..HEAD` or between two tags.
Use the bundled script to gather commit messages and diff summaries.

```bash
./scripts/gather_changes.sh <base-ref> [head-ref]
```

Example:
```bash
./new-and-noteworthy/scripts/gather_changes.sh master
```

### 2. Analyze Changes

Review the output of the script:
- **Commits:** Look for patterns in commit messages (e.g., "feat:", "fix:", "refactor:").
- **Stats:** See which files were modified the most.
- **Diffs:** Look at actual code changes to understand the *how* and *why*.

### 3. Categorize

Group the changes into meaningful categories:
- **Major Features:** User-facing additions or overhauls.
- **Technical Changes:** Refactoring, performance improvements, architectural shifts.
- **Infrastructure:** Tests, build scripts, CI/CD, monitoring.
- **Content/Data:** Database updates, new assets, configuration changes.

### 4. Generate Report

Use the [template.md](references/template.md) as a guide to format the final output. Ensure the tone is professional and focuses on the impact of the changes.

## Examples

**User:** "What's new in the current branch compared to master?"
**Action:** Run `gather_changes.sh master`, analyze, and provide a categorized summary.

**User:** "Update NEW_AND_NOTEWORTHY.md for the recent release."
**Action:** Run `gather_changes.sh <last-release-tag>`, generate the report, and write it to the file.

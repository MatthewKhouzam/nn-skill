# New and Noteworthy Skill (nn-skill)

This repository contains the `new-and-noteworthy` skill for Gemini CLI. It helps generate professional, categorized summaries of recent changes in a codebase by analyzing git logs and diffs.

## Features

- **Automated Data Gathering:** Quickly extract commit messages and diff stats.
- **Categorized Reporting:** Guidance on how to group changes into meaningful sections.
- **Template-Based:** Use a consistent format for all your release notes and updates.

## Getting Started

### Prerequisites

- [Gemini CLI](https://github.com/google/gemini-cli)
- Git

### Installation

To use this as a skill in Gemini CLI, you can point your configuration to this directory or copy the files to your `~/.gemini/skills/` folder.

## Usage

### 1. Gather Data

Identify the range of changes (e.g., `main..HEAD`). Run the gathering script:

```bash
./scripts/gather_changes.sh <base-ref> [head-ref]
```

Example:
```bash
./scripts/gather_changes.sh main
```

### 2. Analyze and Report

- Review the output of the script.
- Categorize changes into Major Features, Technical Changes, Infrastructure, etc.
- Use `references/template.md` to format your final report.

## License

This project is licensed under the terms of the LICENSE file included in this repository.

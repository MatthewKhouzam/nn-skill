# New and Noteworthy Skill (nn-skill)

This repository contains the `new-and-noteworthy` skill/plugin for various coding assistants. It helps generate professional, categorized summaries of recent changes in a codebase by analyzing git logs and diffs.

## Coding Assistant Instructions

This project includes specific configurations and instructions for different assistants:

- **Gemini CLI:** [`SKILL.md`](SKILL.md) and [`gemini-cli-extension.json`](gemini-cli-extension.json)
- **Claude Desktop:** [`.claude-plugin/plugin.json`](.claude-plugin/plugin.json)
- **OpenAI Agents:** [`agents/openai.yaml`](agents/openai.yaml)

## Features

- **Automated Data Gathering:** Quickly extract commit messages and diff stats using git.
- **Categorized Reporting:** Structured guidance for grouping changes into Major Features, Technical Changes, Infrastructure, etc.
- **Template-Based:** Uses a [consistent format](references/template.md) for all release notes and updates.

## Getting Started

### Prerequisites

- Git
- A supported coding assistant (Gemini CLI, Claude Desktop, or an OpenAI-compatible agent)

### Installation

#### Gemini CLI
Point your configuration to this directory or copy the files to your `~/.gemini/skills/` folder.

#### Claude Desktop
Add this directory to your Claude configuration as a plugin.

#### OpenAI
Reference the `agents/openai.yaml` configuration in your agent setup.

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

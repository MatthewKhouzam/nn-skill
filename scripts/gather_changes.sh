#!/bin/bash
# scripts/gather_changes.sh - Gathers commit messages and diff summaries between two git references.

set -e

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <base-ref> [head-ref]"
    exit 1
fi

BASE_REF=$1
HEAD_REF=${2:-HEAD}

echo "### COMMITS AHEAD OF $BASE_REF ###"
git log --oneline --no-merges "$BASE_REF..$HEAD_REF"

echo ""
echo "### STATS ###"
git diff --stat "$BASE_REF..$HEAD_REF"

echo ""
echo "### KEY DIFFS ###"
# Get diffs for important files, avoiding binary or massive files
git diff --unified=0 "$BASE_REF..$HEAD_REF" -- . ':(exclude)*.db' ':(exclude)*.json' ':(exclude)*.mp3' ':(exclude)*.png' ':(exclude)*.gif'

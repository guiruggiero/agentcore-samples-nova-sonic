#!/bin/bash
set -e

UPSTREAM_PATH="01-tutorials/01-AgentCore-runtime/06-bi-directional-streaming"

echo "Fetching upstream..."
git fetch upstream

echo "Checking out upstream content..."
git checkout upstream/main -- "$UPSTREAM_PATH"

echo "Moving to repo root..."
cp -r "$UPSTREAM_PATH/." .
rm -rf 01-tutorials/

echo "Review changes below before committing:"
git diff --stat HEAD

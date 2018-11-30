#!/usr/bin/env bash

GIT_DIR=$(git rev-parse --git-dir)

echo "Installing hooks..."
# This command creates symlink to our pre-commit script
ln -s ../../hooks/pre-commit.bash $GIT_DIR/hooks/pre-commit
ln -s ../../hooks/prepare-commit-msg.bash $GIT_DIR/hooks/prepare-commit-msg
echo "Done!"
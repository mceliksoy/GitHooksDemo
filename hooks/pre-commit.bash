#!/usr/bin/env bash

GIT_DIR=$(git rev-parse --git-dir)

echo "Running pre-commit hook"
mvn findbugs:check
mvn clean test

# $? stores exit value of the last command
if [ $? -ne 0 ]; then
 echo "Tests must pass before commit!"
 exit 1
fi
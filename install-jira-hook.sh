#!/bin/bash
set -eu

if [ -d .git/hooks ]; then
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    OLD_HOOK=""
    if [ -f .git/hooks/prepare-commit-msg ]; then
        OLD_HOOK="$( cat ".git/hooks/prepare-commit-msg" )"
    fi
    NEW_HOOK="$( cat "$DIR/_hooks/prepare-commit-msg" )"
    if [ "${NEW_HOOK}" = "${OLD_HOOK}" ]; then
        echo "notice: prepare-commit-msg hook is already installed"
    else
        echo "Installing Commit Message Prefix hook."
        cp "$DIR/_hooks/prepare-commit-msg" .git/hooks/prepare-commit-msg
        chmod +x .git/hooks/prepare-commit-msg
    fi
else
    echo "Git repository not found, skipping installation of hooks."
fi

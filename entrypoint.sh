#!/bin/sh

# Propagate GitLab CI variables to Git.
if [ ! -z "${GITLAB_USER_EMAIL}" ]; then
    git config --global user.email "${GITLAB_USER_EMAIL}"
fi
if [ ! -z "${GITLAB_USER_NAME}" ]; then
    git config --global user.name "${GITLAB_USER_NAME}"
fi

# Run whatever the user wants to.
exec "$@"
#!/bin/sh

set -e

# Create new Sentry release
sentry-cli releases new -p $SENTRY_PROJECT $RELEASE
sentry-cli releases set-commits "$RELEASE" --commit "$GITHUB_PROJECT@$RELEASE"

# Create new deploy for this Sentry release
sentry-cli releases deploys $RELEASE new -e $DEPLOY_ENV

# Upload sourcemaps to Sentry
sentry-cli releases files $RELEASE upload-sourcemaps --ext ts --ext js --ext map --url-prefix "$URL_PREFIX" --no-rewrite $SOURCEMAP_PATH

# Finalize the release
sentry-cli releases finalize $RELEASE
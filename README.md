# Sentry React Release action

This action creates a Sentry release and deployment for your React app and uploads source maps. You can read more about how Sentry handles [releases](https://docs.sentry.io/workflow/releases/?platform=browsernpm) and [source maps](https://docs.sentry.io/platforms/javascript/sourcemaps/).

## Environment

#### `SENTRY_ORG`

**Required** The Sentry organization.

#### `SENTRY_AUTH_TOKEN`

**Required** The Sentry authentication token.

#### `SENTRY_PROJECT`

**Required** The Sentry project to which this release will be added.

#### `RELEASE`

**Required** The name of the release.

#### `GITHUB_PROJECT`

**Required** The GitHub project with which this release will be associated.

#### `DEPLOYMENT_ENV`

**Required** The environment to which this release is being deployed.

#### `URL_PREFIX`

**Required** The URL prefix in front of files. This is useful when files are stored in a subdirectory. For Reach this is normally `~/static/js`. 

#### `SOURCEMAP_PATH`

**Required** The path to the sourcemap(s). For React this is normally `build/static/js`.

## Example usage

```yaml
uses: candidco/sentry-react-release@v1
env:
  SENTRY_ORG: some-org
  SENTRY_AUTH_TOKEN: ${{ secrets.SENTRY_TOKEN }}
  SENTRY_PROJECT: awesome-project
  RELEASE: commit-hash
  GITHUB_PROJECT: some-org/awesome-project
  DEPLOY_ENV: production
  URL_PREFIX: ~/static/js
  SOURCEMAP_PATH: build/static/js
```
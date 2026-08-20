# Dev Container Features

This repository gives you a public, ready-to-use mirror of dev container Features. Add any
Feature below to your `devcontainer.json` and your environment picks up the matching tool or
service on the next build.

## Using a Feature

Reference a Feature by its published OCI artifact:

```jsonc
{
  "features": {
    "ghcr.io/<owner>/<repo>/<feature-id>:<version>": {}
  }
}
```

Replace `<owner>` and `<repo>` with this repository's GitHub org and name, `<feature-id>` with
the Feature you want, and `<version>` with the release you want to pin (or omit it for latest).
See each Feature's own `devcontainer-feature.json` under `src/` for its id, options, and
supported versions.

## Generated content - do not edit here

This tree is generated. If you find a bug or want to change a Feature, report it and fix it in
the Feature's own upstream repository, then re-sync - changes made directly in this repository
are overwritten on the next release.

## Instantiation checklist (documented inputs to replace before first use)

This overlay ships with placeholder values that a maintainer must replace before the first
release:

- [ ] Set the real GitHub org and repo in `target.json`'s `remote` (replaces
      `REPLACE_ME_ORG`/`REPLACE_ME_REPO`).
- [ ] Confirm the downstream `default_branch` in `target.json` matches this repository's actual
      default branch. `default_branch` only drives publish's `--ref` (which branch is pushed to);
      if this repository's default branch is not `main`, also update the release workflow's
      `on.push.branches` and the job's `if: github.ref == ...` to match - `target.json` does not
      drive those.
- [ ] Optional: for a minimal permission posture, pass `disable-repo-tagging: "true"` to the
      `devcontainers/action` step and drop the job's `permissions.contents` from `write` to
      `read` (the action only needs `contents: write` to push its per-feature git tags).
- [ ] After the first release, set the GHCR package visibility to Public and link it to this
      repository - the default `GITHUB_TOKEN` cannot flip visibility, and packages default to
      private.

# Hello

A minimal devcontainer feature that prints a configurable greeting when it installs.
It exists to validate the feature-mirror pipeline end to end - from the canonical store
through assembly and publish into a downstream repository.

## Usage

Reference the feature in your `devcontainer.json`, using the published location of the
downstream repository that ships it:

```json
{
  "features": {
    "ghcr.io/<org>/<repo>/hello:1": {
      "greeting": "Hello from the mirror!"
    }
  }
}
```

## Options

| Option | Type | Default | Description |
| --- | --- | --- | --- |
| `greeting` | string | `Hello, world!` | The greeting printed while the feature installs. |

# Sobelow Action

This is a GitHub Action for [Sobelow](https://github.com/nccgroup/sobelow), the security-focused static analyzer for the [Phoenix Framework](https://www.phoenixframework.org/).

The most basic workflow looks like this:

```
on: [push]

jobs:
  sobelow_job:
    runs-on: ubuntu-latest
    name: Sobelow Job
    steps:
      - uses: actions/checkout@v2
      - id: run-action
        uses: sobelow/action@v1
      - uses: github/codeql-action/upload-sarif@v1
        with:
          sarif_file: results.sarif
```

This will scan your Phoenix application, and add findings to the Security tab of your repository. 

Two options are supported:

* `report`: if set to "false", this will not generate a report, and will output findings to stdout. 
* `flags`: accepts arbitrary Sobelow flags.

The following example uses `flags` to suppress `Config` findings:

```
on: [push]

jobs:
  sobelow_job:
    runs-on: ubuntu-latest
    name: Sobelow Job
    steps:
      - uses: actions/checkout@v2
      - id: run-action
        uses: sobelow/action@v1
        with:
          flags: '-i Config'
      - uses: github/codeql-action/upload-sarif@v1
        with:
          sarif_file: results.sarif
```
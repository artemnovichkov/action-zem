# Github Action for zem
This Action for [zem](https://github.com/zeplin/zem) enables arbitrary actions with the zem command-line client, including testing and publishing.

## Usage

Executes zem with arguments listed in the Action's `args`.

```
name: Build, Test, and Publish

on: 
  release:
    types: [published]

jobs:
  build:
    name: Build
    runs-on: macOS-latest
    steps:
    - uses: actions/checkout@master
    - name: Test
      run: |
        npm i
        npm test
    - name: Publish
      uses: artemnovichkov/action-zem@master
      env:
        ZEM_TOKEN: ${{ secrets.ZEM_TOKEN }}
      with:
        args: publish
```

### Secrets

* `ZEM_TOKEN` - **Optional**. The token to use for authentication with zem. Required for `zem publish`.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

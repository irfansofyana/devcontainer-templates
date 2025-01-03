# Dev Container Templates

This repository contains a collection of Dev Container Templates that can be used to set up development environments. The templates follow the [Dev Container Template distribution specification](https://containers.dev/implementors/templates-distribution/).

## Available Templates

### go-toolkit

A development container template for Go development with common tools and utilities pre-configured.

## Repository Structure

```text
├── src
│   └── go-toolkit              # Go development environment template
│       ├── .devcontainer      # Contains dev container configuration
│       ├── devcontainer-template.json
│       └── NOTES.md           # Additional template documentation
├── test                       # Test files for templates
└── .github
    └── workflows              # GitHub Actions workflows for testing and release
```

## Using Templates

The templates in this repository are published to GitHub Container Registry (GHCR). You can use the `devcontainer-cli` to apply the template:

for example on your `/workspace` directory, create a new folder called `go-hello-world`

```bash
devcontainer templates apply --workspace-folder ./go-hello-world \
    --template-id ghcr.io/irfansofyana/devcontainer-templates/go-toolkit:latest
```

It will create the `.devcontainer` folder under `./go-hello-world`.

To open it on Dev Container, you can go to `./go-hello-world` directory and open it using the Dev Container extension in Visual Studio Code.

## Development

### Testing Templates

This repository includes automated tests for the templates. You can run the tests locally using:

```bash
./.github/actions/smoke-test/build.sh ${TEMPLATE-ID} 
./.github/actions/smoke-test/test.sh ${TEMPLATE-ID} 
```

### Contributing

1. Fork this repository
2. Create a new branch for your changes
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the terms specified in the [LICENSE](LICENSE) file.

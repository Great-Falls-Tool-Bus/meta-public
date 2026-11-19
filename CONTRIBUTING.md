# Contributing

Follow the [organization’s contributor guide](https://github.com/Great-Falls-Tool-Bus/.github/blob/main/CONTRIBUTING.md) to fork the repository and configure commit signing. From your clone, run:

```sh
nix develop
just setup
just check
```

The checks compare the installed hooks with the public mirror and test them in a temporary repository.

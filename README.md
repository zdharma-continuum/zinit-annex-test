# zinit-annex-test

A [Zinit](https://github.com/zdharma-continuum/zinit) extension (i.e., an
[annex](https://zdharma-continuum.github.io/zinit/wiki/Annexes/)) that attempts
to run tests via the `make test` target after installing or updating a plugin.

```zsh
zinit light zdharma-continuum/zinit-annex-test
```

## Usage

To install, run:

```zsh
zinit light zdharma-continuum/zinit-annex-test
```

Once installed, add the `test` ice to a Zinit plugin invocation:

### `for` syntax

```zsh
zinit for load make test junegunn/fzf
```

### `ice` syntax

```zsh
zinit ice make test
zinit load junegunn/fzf
```

## Configuration

### Verbose output

Before installing or updating the plugin, run:

```zsh
zstyle :zinit:annex:test quiet 0
```

A full example:

```zsh
zstyle :zinit:annex:test quiet 0
zinit ice make test
zinit load junegunn/fzf
```

To skip tests for a single plugin, add `notest` ice:

```zsh
zinit for load make notest junegunn/fzf
```

```zsh
zinit ice make notest
zinit load junegunn/fzf
```

## Examples

### Quiet mode (default)

![z-p-test activation](https://raw.githubusercontent.com/zdharma-continuum/zinit-annex-test/master/images/z-p-test-1.png)

### Non-quiet mode

![z-p-test activation](https://raw.githubusercontent.com/zdharma-continuum/zinit-annex-test/master/images/z-p-test-2.png)

<!-- vim:set ft=markdown:tw80:tabstop=4:shiftwidth=4:softtabstop=4:expandtab: -->

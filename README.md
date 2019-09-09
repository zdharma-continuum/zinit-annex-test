## Introduction

A Zsh-Zplugin extension (i.e. an
[annex](http://zdharma.org/zplugin/wiki/Annexes/)) that runs tests (via `make
test`, for example) – if it finds any of them  – after installing and updating
a plugin or snippet. Simply load it like any other plugin to make it active:

```zsh
zplugin light zdharma/z-p-test
```

## Examples

Example activation in the default quiet mode:

![z-p-test activation](https://raw.githubusercontent.com/zdharma/z-p-test/master/images/z-p-test-1.png)


Example activation in non-quiet mode:

![z-p-test activation](https://raw.githubusercontent.com/zdharma/z-p-test/master/images/z-p-test-2.png)

<!-- vim:set ft=markdown:tw=80: -->

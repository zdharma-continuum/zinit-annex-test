# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

autoload -Uz :zp-test-handler …zp-test-make-targets


@zplg-register-z-plugin "z-p-test" hook:atclone \
    :zp-test-handler \
    :zp-test-help-handler \
    "test''" # register a new ice-mod: test''

@zplg-register-z-plugin "z-p-test" hook:atpull \
    :zp-test-handler \
    :zp-test-help-handler


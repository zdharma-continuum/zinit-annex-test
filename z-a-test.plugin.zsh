# According to the Zsh Plugin Standard:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

autoload -Uz zp-test-handler zp-test-make-targets

# An empty stub to fill the help handler fields
za-test-help-null-handler() { :; }

# Register atclone hook
@zinit-register-annex "zinit-annex-test" hook:atclone-110 \
    zp-test-handler \
    za-test-help-null-handler \
    "notest|test''" # register a new ice-mod: test''

# Register atpull hook
@zinit-register-annex "zinit-annex-test" hook:atpull-110 \
    zp-test-handler \
    za-test-help-null-handler

# KDE File Templates

Desktop entries and source files to create new files
(at this point only scripts) according to best practices.

Content goes to `~/.local/share/templates/`.

The files should then appear under "Right click -> Create New" in Dolphin.

The icons have been hand-selected from the choices that are available on
Manjaro KDE by default. No guarantee that your system will have them.

## Some details

### bash

```bash
#!/usr/bin/env bash
```
Use [env](https://unix.stackexchange.com/questions/29608/why-is-it-better-to-use-usr-bin-env-name-instead-of-path-to-name-as-my) instead of bash directly.
```bash
set -euo pipefail
IFS=$'\n\t'
```
[Bash Strict Mode](http://redsymbol.net/articles/unofficial-bash-strict-mode/)
```bash
shellcheck "$0"
```
Automatically check script with [ShellCheck](https://github.com/koalaman/shellcheck). Remove this production.

#### Useful info:

* [Bash functions are better than I thought](https://cuddly-octo-palm-tree.com/posts/2021-10-31-better-bash-functions/)

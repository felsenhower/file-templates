# KDE File Templates

Desktop entries and source files to create new files
(at this point only scripts) according to best practices.

Content goes to `~/.local/share/templates/`.

The files should then appear under "Right click -> Create New" in Dolphin.

The icons have been hand-selected from the choices that are available on
Manjaro KDE by default. No guarantee that your system will have them.

## Some details

### bash

* [bash template](source/bash_script.sh)
* Use [env](https://unix.stackexchange.com/questions/29608/why-is-it-better-to-use-usr-bin-env-name-instead-of-path-to-name-as-my) instead of bash directly:
```bash
#!/usr/bin/env bash
```
* Use [Bash Strict Mode](http://redsymbol.net/articles/unofficial-bash-strict-mode/):
```bash
set -euo pipefail
IFS=$'\n\t'
```
* Automatically check script with [ShellCheck](https://github.com/koalaman/shellcheck). Remove this production:
```bash
shellcheck "$0"
```
* [Gary Verhaegen – "Bash functions are better than I thought"](https://cuddly-octo-palm-tree.com/posts/2021-10-31-better-bash-functions/)

### C

* [C template](source/c_script.c)

### C++

* [C++ template](source/cpp_script.cpp)
* Do **not** use `using namespace std;` ([isocpp](https://isocpp.org/wiki/faq/coding-standards#using-namespace-std)).

### Makefile

* [Makefile template](source/Makefile)
* Use [`.PHONY`](https://stackoverflow.com/questions/2145590/what-is-the-purpose-of-phony-in-a-makefile):
```makefile
.PHONY: default all clean
```
* Use [`$(RM)`](https://www.google.com/search?client=firefox-b-d&q=make+why+use+%24%28RM%29) in `make clean`:
```makefile
clean:
	$(RM) files
```

### Python

* [Python template](source/python_script.py)
* Use [env](https://unix.stackexchange.com/questions/29608/why-is-it-better-to-use-usr-bin-env-name-instead-of-path-to-name-as-my) instead of `python3` directly.
* Explicitly use `python3`.
* Use [Type Hints](https://www.python.org/dev/peps/pep-0484/) in order to perform static type checking with [mypy](https://github.com/python/mypy):
```python
def main() -> None:
    pass
```
* Encapsulate code in a  [`main` function](https://realpython.com/python-main-function/):
```python
if __name__ == '__main__':
    main()
```

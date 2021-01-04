# REQUIREMENTS

SBCL
QUICKLISP

# INSTALLATION

1) Add local packages to ASDF if needed in the `~/.sbclrc`.
```cl
(pushnew  (merge-pathnames #p"common-lisp/" (user-homedir-pathname))
            asdf:*central-registry*)
```
2) Modify packages to load into the core in `config.lisp`. There are some examples.
```cl
(defvar *quicklisp-packages*
  '("BORDEAUX-THREADS")
  "Load into core from quicklisp.")
```
3) Generate the core. It goes to `.sbcl-core-libs`.
```sh
sbcl --load "make.lisp"
```
4) Add the core to your SBCL startup process. There multiple ways to do that.

Modifying the environment variable.
```sh
SBCL_HOME="$HOME/.sbcl-core-libs"
```
The --core option in the IDE call to SBCL.
```sh
sbcl --core "$HOME/.sbcl-core/libs"
```

# AFTER UPDATING SBCL
Just regenerate the core.
```sh
sbcl --load core-generation.lisp
```

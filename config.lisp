(in-package :cl-user)

(defvar *local-packages*
  ;; Use lowercase strings in the packages here! For example:
  '("utils" "quickwrap")
  "Load into the core from local ASDF directories.")

;;; USE UPPERCASE STRINGS TO KEEP NAMESPACE CLEAN.
(defvar *quicklisp-packages*
  '(;;; For sly
    "SB-BSD-SOCKETS" "SB-POSIX" "SB-INTROSPECT" "SB-CLTL2"
    "ASDF"
    "SLYNK"
    ;;; Personal choices
    ;; Utilities
    "ALEXANDRIA"    ;For lots of great utilities, very stable.
    "UIOP"          ;Required by almost everyone.
    "CL-PPCRE"      ;Regular expressions.
    "QUICKPROJECT"  ;Generate new projects
    "SWANK"
    ;; Testing
    "FIVEAM"        ;A great way to do testing with reader macros.
    ;; Threading
    "BORDEAUX-THREADS"    ;Portable threading.
    )
  "Load into core from quicklisp.")

;; Can only do this stuff once you've saved your own core
(sb-ext:set-sbcl-source-location (merge-pathnames #p"src/repos/sf/sbcl/sbcl"
                                                  (user-homedir-pathname)))

(pushnew  (merge-pathnames #p"common-lisp/" (user-homedir-pathname))
          asdf:*central-registry*)

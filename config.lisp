(in-package :cl-user)

(defvar *local-packages* nil
  ;; Use lowercase strings in the packages here! For example:
  ;; '("utils")
  "Load into the core from local ASDF directories.")

;;; USE UPPERCASE STRINGS TO KEEP NAMESPACE CLEAN.
(defvar *quicklisp-packages*
  '(;;; For sly
    "SB-BSD-SOCKETS" "SB-POSIX" "SB-INTROSPECT" "SB-CLTL2" "ASDF"
    ;;; Personal choices
    ;; Utilities
    "ALEXANDRIA"    ;For lots of great utilities, very stable.
    "UIOP"          ;Required by almost everyone.
    "CL-PPCRE"      ;Regular expressions.
    "QUICKPROJECT"  ;Generate new projects
    ;; Testing
    "FIVEAM"        ;A great way to do testing with reader macros.
    ;; Threading
    "BORDEAUX-THREADS"    ;Portable threading.
    )
  "Load into core from quicklisp.")

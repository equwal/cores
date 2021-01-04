(in-package :cl-user)
;; This code is intended to be used to generate an SBCL core on update

(load "config.lisp")
(when *local-packages* (mapc #'asdf:load-system *local-packages*))

(when *quicklisp-packages*
  (mapc #'ql:quickload *quicklisp-packages*))

(fmakunbound '*local-packages*)
(fmakunbound '*quicklisp-packages*)

(save-lisp-and-die (merge-pathnames #p".sbcl-core-libs" (user-homedir-pathname)))



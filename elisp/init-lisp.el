;;; init-lisp.el --- Emacs lisp settings, and common config for other lisps -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package slime
  ;; :config
  ;; (require 'eglot-fsharp)
  :defer t
  :ensure t)

(setq inferior-lisp-program "/usr/local/bin/sbcl")

(provide 'init-lisp)
;;; init-lisp.el ends here

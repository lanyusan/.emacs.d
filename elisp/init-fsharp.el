;;; init-fsharp.el ---
;;
;; Filename: init-fsharp.el
;; Description:
;; Author: Mingde (Matthew) Zeng
;; Maintainer:
;; Copyright (C) 2019 Mingde (Matthew) Zeng
;; Created: Sun Nov  1 08:09:32 2020 (+0800)
;; Version:
;; Package-Requires: ()
;; Last-Updated:
;;           By:
;;     Update #: 11
;; URL:
;; Doc URL:
;; Keywords:
;; Compatibility:
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Change Log:
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(use-package highlight-indentation
  :ensure t)

(use-package fsharp-mode
  ;; :config
  ;; (require 'eglot-fsharp)
  :defer t
  :ensure t
  :config
  (setq-default fsharp-indent-offset 4)
  (setq inferior-fsharp-program "dotnet fsi --readline-")
  (add-hook 'fsharp-mode-hook 'highlight-indentation-mode))

(use-package eglot-fsharp)

(provide 'init-fsharp)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-fsharp.el ends here

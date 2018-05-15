;;;;;;;;;;;;;;;;;;;;;; Package Handling ;;;;;;;;;;;;;;;;;;;;;;
(when (>= emacs-major-version 24)
  (require 'package)
  ;; ELPA is automatically added.
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://stable.melpa.org/packages/") t)
  (package-initialize)
  (package-refresh-contents)
  )

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(setq initial-scratch-message nil)

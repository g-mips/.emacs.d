;;;;;;;;;;;;;;;;;;;;;; Package Handling ;;;;;;;;;;;;;;;;;;;;;;
(when (>= emacs-major-version 24)
  (require 'package)
  ;; ELPA is automatically added.
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://stable.melpa.org/packages/") t)
  (package-initialize)
  (package-refresh-contents)
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-time-mode t)
 '(global-hl-line-mode 1)
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (xresources-theme))))

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(setq initial-scratch-message nil)

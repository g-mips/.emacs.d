; ---- Install Packages ---- ;
(if (not (package-installed-p 'smart-mode-line))
    (package-install 'smart-mode-line))
(if (not (package-installed-p 'smart-mode-line-powerline-theme))
    (package-install 'smart-mode-line-powerline-theme))

(require 'smart-mode-line-powerline-theme)

(setq powerline-default-separator 'arrow)
(setq display-time-day-and-date 1)

(sml/setup)
(sml/toggle-shorten-directory)

(display-battery-mode 1)

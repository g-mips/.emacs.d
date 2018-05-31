; ---- Install Packages ---- ;
(if (not (package-installed-p 'smart-mode-line))
    (package-install 'smart-mode-line))

(setq sml/theme 'respectful)
(sml/setup)
(sml/toggle-shorten-directory)

(display-time-mode -1)
(display-battery-mode -1)


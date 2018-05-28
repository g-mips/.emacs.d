;; ---- Dependencies ---- ;;
(if (not (package-installed-p 'page-break-lines))
    (package-install 'page-break-lines))
(if (not (package-installed-p 'projectile))
    (package-install 'projectile))

(if (not (package-installed-p 'dashboard))
    (package-install 'dashboard))
(require 'dashboard)
(dashboard-setup-startup-hook)

(setq dashboard-banner-logo-title "gmips compy")
(setq dashboard-startup-banner 3)

(setq dashboard-items '((recents . 5)
			(bookmarks . 5)
			(projects . 5)
			(agenda . 5)
			(registers . 5)))

(start-process-shell-command "xrandr" nil "xrandr --output VGA-1 --mode 1920x1080")

(if (not (package-installed-p 'exwm))
    (package-install 'exwm))
(require 'exwm)
(require 'exwm-config)

(exwm-config-default)

;; What are all the things I want to do from anywhere? ;;
;; move to different windows
;; move to different frames (workspaces)
;; control the size of a window
;; start applications
;; close applications/files
;; exit emacs
;; lock screen
;; control volume
;; control brightness
;; full screen
;; open file
;; open terminal
;;

;; ---- Mode Control ---- ;;
(exwm-input-set-key (kbd "s-i") 'exwm-input-toggle-keyboard)

;; ---- Movement Keys ---- ;;
(exwm-input-set-key (kbd "s-k") #'windmove-up)
(exwm-input-set-key (kbd "s-j") #'windmove-down)
(exwm-input-set-key (kbd "s-l") #'windmove-right)
(exwm-input-set-key (kbd "s-h") #'windmove-left)
(setq windmove-wrap-around t)

;; ---- Screen Size ---- ;;
(exwm-input-set-key (kbd "s-[") 'shrink-window-horizontally)
(exwm-input-set-key (kbd "s-]") 'shrink-window)
(exwm-input-set-key (kbd "s-{") 'enlarge-window-horizontally)
(exwm-input-set-key (kbd "s-}") 'enlarge-window)

(exwm-input-set-key (kbd "s-F") 'exwm-layout-toggle-fullscreen)

;; ---- Mini Buffer ---- ;;
(setq exwm-workspace-minibuffer-position 'top)

;; ---- Workspaces ---- ;;
(setq exwm-workspace-number 1)

;; ---- Share the load between workspaces ---- ;;
(setq exwm-workspace-show-all-buffers t)
(setq exwm-layout-show-all-buffers t)

;; ---- Reset ---- ;;
(exwm-input-set-key (kbd "s-R")
		    (lambda ()
		      (interactive)
		      (start-process-shell-command "xrandr" nil "xrandr --output VGA-1 --mode 1920x1080")
		      (start-process-shell-command "pywal" nil "wal -R")
		      (start-process-shell-command "xrdb merge" nil "xrdb -merge ~/.config/urxvt/.Xresources")
		      (start-process-shell-command "killall compton" nil "killall compton")
		      (start-process-shell-command "compton" nil "/usr/bin/bash -c compton -b --config ~/.config/compton/config")
		      (start-process-shell-command "launch-exwm" nil "/usr/bin/bash -c ~/.config/polybar/launch-exwm.sh")))

(exwm-input-set-key (kbd "s-Z")
		    (lambda ()
		      (interactive)
		      (start-process "lock" nil "/usr/bin/bash -c ~/.config/i3/lock.sh")))

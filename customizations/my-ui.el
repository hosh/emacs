; font
;(set-default-font "-apple-DejaVu_Sans_Mono-medium-normal-normal-*-14-*-*-*-m-0-iso10646-")
;(set-default-font "-apple-Monaco-medium-normal-normal-*-13-*-*-*-m-0-iso10646-")

; don't display startup message
(setq inhibit-startup-message t)

; no scrollbar
(scroll-bar-mode -1)

; no toolbar
(tool-bar-mode -1)

; blink cursor
(blink-cursor-mode t)

; highlight current line
(global-hl-line-mode t)

; force new frames into existing window
(setq ns-pop-up-frames nil)

; no bell
(setq ring-bell-function 'ignore)

; theme
(require 'color-theme)
(setq color-theme-is-global t)
(load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
(color-theme-twilight)

; colors
(custom-set-faces
 '(flymake-errline ((t :underline "red")))
 '(flymake-warnline ((t :underline "green"))))

; pretty diff-mode
(custom-set-faces
 '(diff-added ((t (:foreground "#559944"))))
 '(diff-context ((t nil)))
 '(diff-file-header ((((class color) (min-colors 88) (background dark)) (:foreground "RoyalBlue1"))))
 '(diff-function ((t (:foreground "#00bbdd"))))
 '(diff-header ((((class color) (min-colors 88) (background dark)) (:foreground "RoyalBlue1"))))
 '(diff-hunk-header ((t (:foreground "#fbde2d"))))
 '(diff-nonexistent ((t (:inherit diff-file-header :strike-through nil))))
 '(diff-refine-change ((((class color) (min-colors 88) (background dark)) (:background "#182042"))))
 '(diff-removed ((t (:foreground "#de1923")))))

; pretty magit diffs (based on colors for diff-mode above)
(set-face-attribute 'magit-diff-add nil :foreground "#559944")
(set-face-attribute 'magit-diff-del nil :foreground "#de1923")
(set-face-attribute 'magit-diff-file-header nil :foreground "RoyalBlue1")
(set-face-attribute 'magit-diff-hunk-header nil :foreground "#fbde2d")
(set-face-attribute 'magit-item-highlight nil :background "black")

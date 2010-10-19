; enable Common Lisp support
(require 'cl)

; some modes need to call stuff on the exec-path
(push "/usr/local/bin" exec-path)

; Start in server mode
(server-start)

; add directories to the load path
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/customizations")
(add-to-list 'load-path "~/.emacs.d/utilities")
(add-to-list 'load-path "~/.emacs.d/vendor")

; handy function to load all elisp files in a directory
(load-file "~/.emacs.d/load-directory.el")

; load utility functions
(mapcar 'load-directory '("~/.emacs.d/utilities"))

; load third-party modes
; note: these are configured in customizations/my-modes.el
(vendor 'color-theme)
(vendor 'textmate)
(vendor 'nav)
(vendor 'centered-cursor-mode)
(vendor 'browse-kill-ring)
(vendor 'yaml-mode)
(vendor 'rinari)
(vendor 'full-ack)
(vendor 'textile-minor-mode)
(vendor 'magit)
(vendor 'save-visited-files)
(vendor 'dired+)
(vendor 'minimap)
(vendor 'slime)
(vendor 'mo-git-blame)
(vendor 'smart-tab)
(vendor 'cheat)
(vendor 'undo-tree)
(vendor 'google-maps)


; load third-party modes that the vendor function can't handle
(add-to-list 'load-path "~/.emacs.d/vendor/js2")
(add-to-list 'load-path "~/.emacs.d/vendor/rhtml")
(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet")

; load personal customizations (keybindings, colors, etc.)
(mapcar 'load-directory '("~/.emacs.d/customizations"))

 '(diff-added ((t (:foreground "#559944"))))
 '(diff-context ((t nil)))
 '(diff-file-header ((((class color) (min-colors 88) (background dark)) (:foreground "RoyalBlue1"))))
 '(diff-function ((t (:foreground "#00bbdd"))))
 '(diff-header ((((class color) (min-colors 88) (background dark)) (:foreground "RoyalBlue1"))))
 '(diff-hunk-header ((t (:foreground "#fbde2d"))))
 '(diff-nonexistent ((t (:inherit diff-file-header :strike-through nil))))
 '(diff-refine-change ((((class color) (min-colors 88) (background dark)) (:background "#182042"))))
 '(diff-removed ((t (:foreground "#de1923"))))
 '(flymake-errline ((t :underline "red")))
 '(flymake-warnline ((t :underline "green")))


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

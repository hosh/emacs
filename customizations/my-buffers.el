; recent files
(require 'recentf)
(setq recentf-max-saved-items 100)

; disable auto-save files (#foo#)
(setq auto-save-default nil)

; disable backup files (foo~)
(setq backup-inhibited t)

; save cursor position within files
(require 'saveplace)
(setq save-place-file "~/.emacs.d/.saveplace")
(setq-default save-place t)

; save minibuffer history across sessions
(setq savehist-file "~/.emacs.d/.savehist")
(savehist-mode 1)

; nicer naming of buffers with identical names
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator " • ")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

; automatically clean up old buffers
(require 'midnight)

; use default Mac browser
(setq browse-url-browser-function 'browse-url-default-macosx-browser)

; pick up changes to files on disk automatically (ie, after git pull)
(global-auto-revert-mode 1)

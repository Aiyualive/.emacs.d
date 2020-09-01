;Change title-bar text
(setq frame-title-format
      "ricemacs")
;Set default font
(add-to-list 'default-frame-alist
	     '(font . "Menlo for Powerline"))

;Setp Multi-term to run zsh
(require 'multi-term)
(setq multi-term-program "/bin/zsh")

; Moves the point to the newly created window after splitting.
(defadvice split-window (after move-point-to-new-window activate)
  (other-window 1))

;Disable bell sound for invalid cmd
(setq ring-bell-function 'ignore)

; Just y or n will do when prompted
(fset 'yes-or-no-p 'y-or-n-p)

;Disable menu-bar
(menu-bar-mode -1)

;Disable tool-bar
(tool-bar-mode -1)

;Disable scroll-bar
(scroll-bar-mode -1)

;Disable blinking cursor
(blink-cursor-mode 0)

;Change to _ cursor
(set-default 'cursor-type 'bar)

;(column, line) display
(column-number-mode)

(ido-mode t)

(show-paren-mode)

(which-key-mode 1)

;Highlight current line
(global-hl-line-mode 1)

;Show line number
(global-linum-mode 1)

;Set theme
;(load-theme 'monokai t)

;autocomplete for default GNU commands
(ac-config-default)

;For parenthesis and quotes
(autopair-global-mode)

(require 'ace-popup-menu)
(ace-popup-menu-mode 1)

;Trailing white space
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;80 characters
(column-enforce-mode)

;Auto indent mode off
;(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

;---------- Scrolling ----------
;; scroll one line at a time (less "jumpy" than defaults)

;; one line at a time
;(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-scroll-amount '(0.05))

;; don't accelerate scrolling
(setq mouse-wheel-progressive-speed nil)

;; scroll window under mouse
(setq mouse-wheel-follow-mouse 't)

;; keyboard scroll one line at a time
(setq scroll-step 1)


(powerline-center-theme)
(setq powerline-default-separator
      'slant)

;; Set window frame size on startup
(add-to-list 'default-frame-alist '(width  . 202))
(add-to-list 'default-frame-alist '(height . 82))

;; Hide start messages
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; Mac keys
(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)

;; Auto-indent
;(define-key global-map (kbd "RET") 'newline-and-eindent)

;; Shift selection and replacement
;;(setq x-select-enable-primary t) - dunno
;(setq select-enable-primary t)
;(setq mouse-drag-copy-region t)
(setq shift-select-mode t)
(delete-selection-mode 1)

;; Evil-mode
(evil-mode t)

; Removes *scratch* from buffer after the mode has been set.
;(defun remove-scratch-buffer ()
;  (if (get-buffer "*scratch*")
;      (kill-buffer "*scratch*")))
;(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Removes *messages* from the buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")
;; Removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
          '(lambda ()
             (let ((buffer "*Completions*"))
               (and (get-buffer buffer)
                    (kill-buffer buffer)))))


(evil-set-initial-state 'magit-mode 'normal)
(evil-set-initial-state 'magit-status-mode 'normal)
(evil-set-initial-state 'magit-diff-mode 'normal)
(evil-set-initial-state 'magit-log-mode 'normal)
;(evil-define-key 'normal magit-mode-map
;    "j" 'magit-goto-next-section
;    "k" 'magit-goto-previous-section)
;(evil-define-key 'normal magit-log-mode-map
;    "j" 'magit-goto-next-section
;    "k" 'magit-goto-previous-section)
;(evil-define-key 'normal magit-diff-mode-map
;    "j" 'magit-goto-next-section
;    "k" 'magit-goto-previous-section)


;; Do not make backups
;(setq make-backup-files nil)

;; Backup folder for ~ files
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;; Display Chinese characters
(setq-default buffer-file-coding-system 'chinese-gbk-mac)
(setq-default default-buffer-file-coding-system 'chinese-gbk-mac)
(set-default-coding-systems 'chinese-gbk-mac)
(prefer-coding-system 'chinese-gbk-mac)

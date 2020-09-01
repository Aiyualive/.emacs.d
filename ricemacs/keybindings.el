(require 'general)
(require 'multiple-cursors)
;;(require 'fsharp-mode)
(require 'csharp-mode)
(require 'expand-region)

;; Spacemacs-like keybindings
(general-define-key
   :keymaps '(normal insert visual emacs)
   :prefix "SPC"
   :non-normal-prefix "M-SPC"
   "g g"   'dumb-jump-go
   "g b"   'dumb-jump-back
   "f f"   'find-file
   "w s"   'split-window-vertically
   "w v"   'split-window-horizontally
   "w d"   'delete-window
   "w TAB" 'other-window
   "i"     'find-user-init-file
   "SPC"   'smex
   "E"     'eval-buffer
   "b"     'ido-switch-buffer
   "K"     'kill-this-buffer
   "TAB"   'switch-to-previous-buffer
   "t"     'neotree-toggle
   "+"     'text-scale-increa
   "-"     'text-scale-decrease
   "R"     'query-replace
   "j"     'ace-jump-mode
   "å"     'ace-window
   "l"     'windmove-left
   "ø"     'windmove-right
   "p"     'windmove-up
   "æ"     'windmove-down
   "G"     'magit-status
)

(defun find-user-init-file ()
  "Edit the `user-init-file', in another window."
  ;For another window: find-file-other-window
  (interactive)
  (find-file user-init-file))

(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
  Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;; Move up the current line
(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

;; Move down the current line
(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(defun term-interrupt ()
  "Send EOF in term mode."
  (interactive)
  (term-send-raw-string "\04"))

(use-package dumb-jump
 :config
   (setq dumb-jump-default-project "~/Dropbox/ProjectEuler")
   ;(setq dumb-jump-default-project "~/Documents/DIKU/Done/PLD")
   (setq dumb-jump-prefer-searcher 'rg)
   (setq dumb-jump-selector 'ivy)
 :ensure)

;; M key is ALT
(add-to-list 'term-bind-key-alist '("C-c C-d" . term-interrupt))
(global-set-key (kbd "C-c C-v") 'term-paste)

(global-set-key (kbd "M-ø") 'move-line-down)
(global-set-key (kbd "M-å") 'move-line-up)

;; Multiple cursors
; get out of multiple cursors by pressing return
(global-set-key (kbd "M-j") 'mc/mark-next-like-this)
(global-set-key (kbd "M-k") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "M-x") 'smex)

(global-set-key [(meta shift o)] (lambda () (interactive) (shrink-window-horizontally 3)))
(global-set-key [(meta shift p)] (lambda () (interactive) (enlarge-window-horizontally 3)))
(global-set-key (kbd "s-_") (lambda () (interactive) (shrink-window 3)))
(global-set-key (kbd "s-?") (lambda () (interactive) (enlarge-window 3)))

(global-set-key (kbd "M-e") 'er/expand-region)
(global-set-key (kbd "M-d") 'er/contract-region)

(global-set-key (kbd "s-Z") 'undo-tree-redo)

;(define-key evil-insert-state-map "ss" 'evil-normal-state)
;; Evil mode toggle key
(setq evil-toggle-key "C-E")

;; Exit out of insert mode with ee
(evil-escape-mode 1)
(setq evil-escape-key-sequence "eee")
(setq-default evil-escape-delay 0.2)

; For haskell compilation
;(eval-after-load "haskell-mode"
;    '(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile))

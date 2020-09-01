;; Load package.el
(require 'package)

;; Adding repos
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

;; Initialize package.el
(package-initialize)

;(when (not package-archive-contents)
(package-refresh-contents)

;; Ensured list of packages that should be installed
(setq package-list
   '(ac-clang
     ace-popup-menu
   	 ace-window
	 atom-one-dark-theme ;theme
	 auto-package-update
	 autopair
	 auctex
	 auctex-latexmk
	 auto-complete
	 auto-complete-clang
	 avy
	 avy-menu
	 bind-key
	 clang-format
	 column-enforce-mode
	 company
	 csharp-mode
	 dumb-jump
	 epl
	 evil
	 evil-escape
	 exec-path-from-shell
	 expand-region
	 flycheck
	 fsharp-mode
	 general
	 goto-chg
	 helm-core
	 ivy
	 multi-term
	 multiple-cursors
	 neotree
	 nlinum
   	 pkg-info
	 popup
	 pos-tip
	 powerline
	 restart-emacs
 	 smartparens
	 smex
	 switch-window
	 undo-tree
	 use-package
	 which-key
     ))

;; Install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Inherit Shell to Emacs
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Ensure the packages are up to date
(use-package auto-package-update
   :ensure t
   :config
   (setq auto-package-update-delete-old-versions t
         auto-package-update-interval 4)
   (auto-package-update-maybe))

;; Load package.el
(require 'package)

;; Adding repos
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

;; Initialize package.el
(package-initialize)

;; Shell stuff
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;(when (not package-archive-contents)
(package-refresh-contents)

;; Ensure the packages are up to date
(use-package auto-package-update
   :ensure t
   :config
   (setq auto-package-update-delete-old-versions t
         auto-package-update-interval 4)
   (auto-package-update-maybe))

;; Ensured list of packages that should be installed
(setq package-list
   '(neotree
     restart-emacs
     general
     ace-popup-menu
     evil
     company
     column-enforce-mode
     auto-complete
     auto-complete-clang
     auctex
     auctex-latexmk
     ace-window
     bind-key
     which-key
     column-enforce-mode
     flycheck
     ivy
     powerline
     smartparens
     smex
     use-package
     which-key
     undo-tree
     switch-window
     popup
     pos-tip
     pkg-info
     nlinum
     goto-chg
     epl
     dumb-jump
     clang-format
     autopair
     avy
     avy-menu
     auto-package-update
     ))

;; Install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

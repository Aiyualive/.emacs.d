(add-to-list 'load-path "~/.emacs.d/themes/emacs-doom-themes/")
(add-to-list 'load-path "~/.emacs.d/themes/atom-one-dark-theme/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/atom-one-dark-theme")
;;(require 'doom-themes)
;;(load-theme 'doom-tomorrow-night t)

(require 'atom-one-dark-theme)
;;(load-theme 'atom-one-dark t)

(add-hook 'after-init-hook (lambda () (load-theme 'atom-one-dark t)))

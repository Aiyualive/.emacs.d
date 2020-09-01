;;; fsharp-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "eglot-fsharp" "eglot-fsharp.el" (24039 46951
;;;;;;  276153 625000))
;;; Generated autoloads from eglot-fsharp.el

(autoload 'eglot-fsharp "eglot-fsharp" "\
Return `eglot' contact when FsAutoComplete is installed.
Ensure FsAutoComplete is installed (when called INTERACTIVE).

\(fn INTERACTIVE)" nil nil)

;;;***

;;;### (autoloads nil "fsharp-mode" "fsharp-mode.el" (24039 46951
;;;;;;  277382 627000))
;;; Generated autoloads from fsharp-mode.el

(add-to-list 'auto-mode-alist '("\\.fs[iylx]?\\'" . fsharp-mode))

(autoload 'fsharp-mode "fsharp-mode" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "inf-fsharp-mode" "inf-fsharp-mode.el" (24039
;;;;;;  46951 278665 750000))
;;; Generated autoloads from inf-fsharp-mode.el

(autoload 'run-fsharp "inf-fsharp-mode" "\
Run an inferior fsharp process.
Input and output via buffer `*inferior-fsharp*'.

\(fn &optional CMD)" t nil)

;;;***

;;;### (autoloads nil nil ("fsharp-mode-font.el" "fsharp-mode-pkg.el"
;;;;;;  "fsharp-mode-structure.el" "fsharp-mode-util.el") (24039
;;;;;;  46951 279854 894000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; fsharp-mode-autoloads.el ends here

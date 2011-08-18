(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/yaml-mode/"))
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(add-hook 'yaml-mode-hook
      '(lambda ()
        (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

(provide 'init-yaml)
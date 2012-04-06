(add-to-list 'load-path "~/.emacs.d/site-lisp/textile-mode")

(require 'textile-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

(provide 'init-textile)
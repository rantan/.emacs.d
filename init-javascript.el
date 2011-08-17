(add-to-list 'load-path "~/.emacs.d/site-lisp/js2-mode/")

(require 'js2-mode)

(setq-default c-basic-offset 4)

;;(when (load "js2" t)
  (setq js2-cleanup-whitespace nil
        js2-mirror-mode nil
        js2-bounce-indent-flag nil)

  (defun indent-and-back-to-indentation ()
    (interactive)
    (indent-for-tab-command)
    (let ((point-of-indentation
           (save-excursion
             (back-to-indentation)
             (point))))
      (skip-chars-forward "\s " point-of-indentation)))
  (define-key js2-mode-map "\C-i" 'indent-and-back-to-indentation)

  (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode));)

(provide 'init-javascript)
(add-to-list 'load-path "~/.emacs.d/site-lisp/js2-mode/")

(require 'js2-mode)

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

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;;; カスタマイズ
(defun my-js2-mode-hook()
  (setq c-basic-offset 4
	indent-tabs-mode nil
	tab-width 4)
  (jaspace-mode-on))

(add-hook 'js2-mode-hook 'my-js2-mode-hook)

(provide 'init-javascript)
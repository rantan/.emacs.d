(add-to-list 'load-path "~/.emacs.d/site-lisp/markdown-mode")

(require 'markdown-mode)

(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))

(setq markdown-command "/usr/local/bin/markdown")

(provide 'init-markdown)
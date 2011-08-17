;; -*- coding: utf-8 -*-
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/auto-install"))

(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/site-lisp/auto-install/")

(require 'init-auto-complete)
(require 'init-anything)
(require 'init-color-theme)
(require 'init-font)
(require 'init-moccur)
(require 'init-elscreen)
(require 'init-htmlize)
(require 'init-linum)
(require 'init-rinari)


(cond
 ((string-match "apple-darwin" system-configuration)
  (setq ns-command-modifier (quote meta))
  (setq ns-alternate-modifier (quote super))
  )
 )

;;; 起動画面を非表示
(setq inhibit-startup-message t)

;;; バックアップファイルを無効化
(setq make-backup-files nil)

;;; C-hでBackSpace
(define-key global-map "\C-h" 'delete-backward-char)

;;; 透過
(set-frame-parameter nil 'alpha 90)
;; -*- coding: utf-8 -*-
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/auto-install"))

(add-to-list 'exec-path "/opt/local/bin/")
(require 'init-anything)

(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/site-lisp/auto-install/")

(require 'init-auto-complete)
(require 'init-color-theme)
(require 'init-font)
(require 'init-moccur)
(require 'init-elscreen)
(require 'init-htmlize)
(require 'init-linum)
(require 'init-rinari)
(require 'init-javascript)
(require 'init-ruby)
(require 'init-yaml)
(require 'init-auto-highlight-symbol-mode)
(require 'init-jaspace)
(require 'init-sql)
(require 'init-git)
(require 'init-coffee)
(require 'init-scss)
(require 'init-flymake)

(cond
 ((string-match "apple-darwin" system-configuration)
  (setq ns-command-modifier (quote meta))
  (setq ns-alternate-modifier (quote super))
  )
 )

;;; 起動画面を非表示
(setq inhibit-startup-message t)

;;; バックアップファイルを無効化
(setq-default make-backup-files nil)

;;; C-hでBackSpace
(define-key global-map "\C-h" 'delete-backward-char)

;;; タブを使わない
(setq-default indent-tabs-mode nil)

;;; fullscreen切り替え
(define-key global-map "\C-cm" 'ns-toggle-fullscreen)

;;; 透過
(set-frame-parameter nil 'alpha 90)

(server-start)


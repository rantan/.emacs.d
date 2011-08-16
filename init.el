;; -*- coding: utf-8 -*-
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install"))

(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")

(require 'init-auto-complete)
(require 'init-color-theme)
(require 'init-font)
(require 'init-moccur)
(require 'init-elscreen)
(require 'init-htmlize)

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

;; C-c m でフルスクリーンを切り替え
;; (defun my-mac-toggle-max-window ()
;;   (interactive)
;;   (if (frame-parameter nil 'fullscreen)
;;       (set-frame-parameter nil 'fullscreen nil)
;;     (menu-bar-mode nil)
;;     (set-frame-parameter nil 'fullscreen 'fullboth)))
;; (global-set-key "\C-cm" 'my-mac-toggle-max-window)

;; 
;; Haw to install anything 
;; auto-install-batch RET anything
;; 
(require 'anything-startup)
;; (require 'anything)
;; (require 'anything-config)
(setq anything-idle-delay 0.3)	; 候補を作って描写するまでのタイムラグ。デフォルトで 0.3
(setq anything-input-idle-delay 0.2) ; 文字列を入力してから検索するまでのタイムラグ。デフォルトで 0
(setq anything-candidate-number-limit 100) ; 表示する最大候補数。デフォルトで 50
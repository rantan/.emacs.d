(add-to-list 'load-path "~/.emacs.d/site-lisp/jaspace/")
;====================================
;;jaspace.el を使った全角空白、タブ、改行表示モード
;;切り替えは M-x jaspace-mode-on or -off
;====================================
(require 'jaspace)
;; 全角空白を表示させる。
(setq-default jaspace-alternate-jaspace-string "□")
;; 改行記号を表示させる。
(setq-default jaspace-alternate-eol-string "↓\n")
;; タブ記号を表示。
(setq jaspace-highlight-tabs t)  ; highlight tabs

;; EXPERIMENTAL: On Emacs 21.3.50.1 (as of June 2004) or 22.0.5.1, a tab
;; character may also be shown as the alternate character if
;; font-lock-mode is enabled.
;; タブ記号を表示。
(setq-default jaspace-highlight-tabs "^") ; use ^ as a tab marker


(provide 'init-jaspace)
;; 行番号を表示する
(require 'linum+)

(global-linum-mode t) ;; デフォルトでlinum-modeを有効にする

; バッファ中の行番号表示
(when (global-linum-mode t)
  ;; 行番号のフォーマット
  (set-face-attribute 'linum nil :foreground "steel blue" :height 0.8)
  (setq linum-format "%4d")
  )

(provide 'init-linum)

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

(provide 'init-anything)
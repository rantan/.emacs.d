(add-to-list 'load-path "~/.emacs.d/apel/")
(add-to-list 'load-path "~/.emacs.d/elscreen/")
;; elscreen setting
;; タブを表示しない
;; (defun elscreen-frame-title-update ()
;;   (when (elscreen-screen-modified-p 'elscreen-frame-title-update)
;;     (let* ((screen-list (sort (elscreen-get-screen-list) '<))
;; 	   (screen-to-name-alist (elscreen-get-screen-to-name-alist))
;; 	   (title (mapconcat
;; 		   (lambda (screen)
;; 		     (format "%d%s %s"
;; 			     screen (elscreen-status-label screen)
;; 			     (get-alist screen screen-to-name-alist)))
;; 		   screen-list " ")))
;;       (if (fboundp 'set-frame-name)
;; 	  (set-frame-name title)
;; 	(setq frame-title-format title)))))

;; (eval-after-load "elscreen"
;;   '(add-hook 'elscreen-screen-update-hook 'elscreen-frame-title-update))

(require 'elscreen)

;; (setq elscreen-display-tab t)
;; (load "elscreen")

(provide 'init-elscreen)
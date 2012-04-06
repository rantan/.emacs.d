(require 'color-moccur)
(require 'moccur-edit)


;; moccur-grep で特定のファイルを対象外としたい
(setq moccur-grep-exclusion-buffer-name-regexp "\\(TAGS\\)\\|\\(\\.ext\\)|\\(\\.svn\\)|\\(\\.git\\)")

(defun delete-string-match (reg lst)
  (let ((ret nil))
    (while lst
      (unless (string-match reg (car lst))
        (setq ret (cons (car lst) ret)))
      (setq lst (cdr lst)))
    (reverse ret)))
(defadvice moccur-search-files (before moccur-search-files-with-exclusion)
  "enable moccur-grep-exclusion-buffer-name-regexp"
  (ad-set-arg 1 (delete-string-match moccur-grep-exclusion-buffer-name-regexp (ad-get-arg 1))))
(ad-enable-advice 'moccur-search-files 'before 'moccur-search-files-with-exclusion)
(ad-activate 'moccur-search-files)

(provide 'init-moccur)
(require 'pyim)
(pyim-scheme-add
    '(huma
      :document
      "虎码方案"
      :class xingma
      :code-prefix "huma/"
      :first-chars "abcdefghijklmnopqrstuvwxyz"
      :rest-chars "abcdefghijklmnopqrstuvwxyz"
      :code-prefix-history ("_")
      :code-split-length 4
      :code-maximum-length 4))
  ;;----'默认码表'
  (pyim-default-scheme 'huma)

;;;###autoload
(defun pyim-huma-enable ()
  "Add huma dict to pyim."
  (interactive)
  (let* ((dir (file-name-directory
               (locate-library "pyim-huma.el")))
         (file (concat dir "pyim-huma.pyim")))))

;; * Footer

(provide 'pyim-huma)

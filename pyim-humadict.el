(require 'pyim)
(pyim-scheme-add
    '(huma
      :document "虎码方案"
      :class xingma
      :first-chars "abcdefghijklmnopqrstuvwxyz"
      :rest-chars "abcdefghijklmnopqrstuvwxyz"
      :code-prefix "huma/"
      :code-prefix-history ("_")
      :code-split-length 4
      :code-maximum-length 4
      :prefer-trigger-chars nil))

;;;###autoload
(defun pyim-humadict-enable ()
  "Add huma dict to pyim."
  (interactive)
  (let* ((dir (file-name-directory
               (locate-library "pyim-humadict.el")))
         (file (concat dir "pyim-humadict.pyim")))))
;; * Footer

(provide 'pyim-humadict)

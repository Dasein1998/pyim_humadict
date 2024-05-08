;;; pyim-humadict.el --- huma for pyim               -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Dasein

;; Author: Dasein <dasein@Dasein-mac.local>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.




(provide 'pyim-humadict)
;;; pyim-humadict.el ends here

;;; pyim-humadict.el
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
      :prefer-triggers nil
      :cregexp-support-p t))

;;;###autoload
(defun pyim-humadict-enable ()
  "Add huma dict to pyim."
  (interactive)
  (let* ((dir (file-name-directory
               (locate-library "pyim-humadict.el")))
         (file (concat dir "pyim-humadict.pyim")))))

(provide 'pyim-humadict)

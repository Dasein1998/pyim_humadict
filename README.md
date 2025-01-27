# pyim-humadict
虎码单字输入方案在Emacs中的pyim版本

## 使用 
```elisp
(use-package pyim
  :init
  (setq default-input-method "pyim")
  :config
  (require 'pyim-humadict)
  (pyim-humadict-enable)
  ;;----'默认码表'
  (pyim-default-scheme 'huma)
(define-key pyim-mode-map ";"
  (lambda ()
    (interactive)
    (pyim-select-word-by-number 2))) ; 使用 ;上屏副选
)
```

# huma_pyim
虎码输入方案在Emacs中的pyim版本
- 根据虎码官方冰凌输入法的词库生成
- 重排了单字和词的顺序，重码中单字永远在词的前面

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

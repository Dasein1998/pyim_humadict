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
  (require 'pyim-huma)
  ;;----'默认码表'
  (pyim-default-scheme 'huma)
)
```

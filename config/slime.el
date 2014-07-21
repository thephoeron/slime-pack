(setq inferior-lisp-program "sbcl")

(live-add-pack-lib "slime")
(require 'slime-autoloads)
(setq slime-contribs '(slime-fancy))

(live-add-pack-lib "ac-slime")
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes '(slime-mode slime-repl-mode)))

(live-add-pack-lib "emacs-neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(require 'multi-term)
(setq multi-term-program "/bin/bash")

(live-add-pack-lib "mmm-mode")
(require 'mmm-mode)

(mmm-add-classes
  '((markdown-lisp
     :submode lisp-mode
     :face mmm-declaration-submode-face
     :front "^```lisp[\n\r]+"
     :back "^```$")))

(setq mmm-global-mode 't)
(mmm-add-mode-ext-class 'markdown-mode nil 'markdown-lisp)

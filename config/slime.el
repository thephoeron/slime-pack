(setq inferior-lisp-program "sbcl")

(live-add-pack-lib "slime")
(require 'slime-autoloads)
(setq slime-contribs '(slime-fancy))

(live-add-pack-lib "ac-slime")
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))
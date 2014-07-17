(setq inferior-lisp-program "sbcl")

(live-add-pack-lib "slime")
(require 'slime-autoloads)
(setq slime-contribs '(slime-fancy))
(setq inferior-lisp-program "sbcl")

(live-add-pack-lib "slime")
(require 'slime)
(slime-setup '(slime-fancy))
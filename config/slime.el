(setq inferior-lisp-program "sbcl")

(live-add-pack-lib "slime")
(require 'slime-autoloads)
(setq slime-contribs '(slime-fancy))
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))

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
(require 'mmm-auto)

(mmm-add-classes
  '((markdown-lisp
     :submode lisp-mode
     :face mmm-code-submode-face
     :front "^```lisp[\n\r]+"
     :back "^```$")
    (markdown-elisp
     :submode emacs-lisp-mode
     :face mmm-code-submode-face
     :front "^```elisp[\n\r]+"
     :back "^```$")
    (markdown-shell
     :submode sh-mode
     :face mmm-code-submode-face
     :front "^```sh[\n\r]+"
     :back "^```$")
    ))

(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'markdown-mode "\\.md\\'" 'markdown-lisp)
(mmm-add-mode-ext-class 'markdown-mode "\\.md\\'" 'markdown-elisp)
(mmm-add-mode-ext-class 'markdown-mode "\\.md\\'" 'markdown-shell)

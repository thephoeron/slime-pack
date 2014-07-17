## SLIME Pack for Emacs Live

This is just a wrapper around SLIME and AC-SLIME for Emacs Live.

See SLIME documentation at: https://github.com/slime/slime, AC-SLIME documentation at https://github.com/purcell/ac-slime, and Emacs Live documentation at: http://overtone.github.io/emacs-live/documentation.html

### Installation and Usage:

Clone this repo under `~/.live-packs/`, and add the following line to your `~/.emacs-live.el` file:

```lisp
(live-append-packs '(~/.live-packs/slime-pack))
```

The default inferior-lisp-program is set to SBCL.

Restart Emacs, and you should be able to `M-x slime` once you get to the sweet ascii-art animation, and hack away in Common Lisp with all the extra goodies that come with Emacs Live.

Happy Hacking!

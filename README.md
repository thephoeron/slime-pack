## SLIME Pack for Emacs Live

This is just a wrapper around SLIME and AC-SLIME for Emacs Live.  It also includes Multi-Term, Neo-Tree, and MMM-Mode, for convenience.

### Documentation

SLIME: https://github.com/slime/slime

AC-SLIME: https://github.com/purcell/ac-slime

MultiTerm: http://www.emacswiki.org/emacs/MultiTerm

NeoTree: https://github.com/jaypei/emacs-neotree

MMM-Mode: https://github.com/purcell/mmm-mode
(and for explanation of how the Lisp sub-mode is implemented for Markdown, see [this blog article](http://vxlabs.com/2014/04/08/syntax-highlighting-markdown-fenced-code-blocks-in-emacs/)

Emacs Live: http://overtone.github.io/emacs-live/documentation.html

### Installation and Usage

Clone this repo under `~/.live-packs/` recursively:

```sh
$ cd ~/.live-packs
$ git clone --recursive https://github.com/thephoeron/slime-pack.git
```

Then add the following line to your `~/.emacs-live.el` file:

```lisp
(live-append-packs '(~/.live-packs/slime-pack))
```

The default inferior-lisp-program is set to SBCL.

Restart Emacs, and you should be able to `M-x slime` once you get to the sweet ascii-art animation, and hack away in Common Lisp with all the extra goodies that come with Emacs Live.

Happy Hacking!

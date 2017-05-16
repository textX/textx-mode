[![MELPA](https://melpa.org/packages/textx-mode-badge.svg)](https://melpa.org/#/textx-mode)
[![MELPA](http://melpa-stable.milkbox.net/packages/textx-mode-badge.svg)](http://melpa-stable.milkbox.net/#/textx-mode)

# TextX mode for GNU Emacs

[TextX](http://igordejanovic.net/textX/) is a meta-language (i.e. a language for language definition) for domain-specific language (DSL) specification in Python.

# Installation

`textx-mode` is available on [MELPA](https://melpa.org/) and [MELPA stable](http://melpa-stable.milkbox.net/).

You should enable *MELPA* in your `emacs.d` as suggested in [documentation](https://github.com/melpa/melpa#usage).
To add *MELPA stable* follow the documentation from [here](https://github.com/melpa/melpa#melpa-stable).

Then you can install `textx-mode` with <kbd>M-x package-install [RET] textx-mode [RET]</kbd>.

If you have enabled both *MELPA* and *MELPA stable* you can pin `textx-mode` to be fetched from *MELPA stable*:

``` emacs-lisp
(setq package-pinned-packages '((textx-mode . "melpa-stable")))
```

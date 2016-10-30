;;; textx-mode.el --- Major mode for editing textX   -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Novak Boskov

;; Author: Novak Boskov <gnovak.boskov@gmail.com>
;; Keywords: textx

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Basic mode for editing textX code.
;; See <https://github.com/igordejanovic/textX>

;;; Code:

(defconst textx-mode-syntax-table
  (let ((table (make-syntax-table)))
    ;; (c-populate-syntax-table table)
    (modify-syntax-entry ?_ "w" table)
    (modify-syntax-entry ?/ "\". 124b" table)
    (modify-syntax-entry ?* ". 23" table)
    (modify-syntax-entry ?\n "> b" table)
    (modify-syntax-entry ?' "\"" table)
    (modify-syntax-entry ?\" "\"" table)
    table)
  "Syntax table used in `textx-mode' buffers.")

(setq-local comment-start "// ")

(setq textx-keywords '("import"
                       "eolterm"
                       "ws"
                       "skipws"
                       "noskipws"
                       ))
(setq textx-base-types '("BASETYPE" "STRING" "INT" "FLOAT" "BOOL" "ID"))
(setq textx-operators '("=" "+=" "*=" "?=" "*" "+" "?"))


(setq textx-keywords-regexp (regexp-opt textx-keywords 'words))
(setq textx-base-types-regexp (regexp-opt textx-base-types 'words))
(setq textx-operators-regexp (regexp-opt textx-operators 'symbol))


(setq textx-font-lock-keywords
      `(
        (,textx-base-types-regexp . font-lock-type-face)
        (,textx-keywords-regexp . font-lock-keyword-face)
        (,textx-operators-regexp . font-lock-keyword-face)
        ))

(define-derived-mode textx-mode fundamental-mode "textX"
  :syntax-table textx-mode-syntax-table
  (setq-local font-lock-defaults
              '((textx-font-lock-keywords)))
  )

;; Not needed anymore
(setq textx-keywords nil)
(setq textx-keywords-regexp nil)
(setq textx-base-types nil)
(setq textx-base-types-regexp nil)


(provide 'textx-mode)

;; coding: utf-8

;;; textx-mode.el ends here


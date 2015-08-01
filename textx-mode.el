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
    ;; / is punctuation, but // is a comment starter
    (modify-syntax-entry ?/ ". 12")
    ;; \n is a comment ender
    (modify-syntax-entry ?\n ">"))
  table)

(define-derived-mode textx-mode prog-mode "textX"
  :syntax-table textx-mode-syntax-table
  (font-lock-ensure))

(provide 'textx-mode)
;;; textx-mode.el ends here

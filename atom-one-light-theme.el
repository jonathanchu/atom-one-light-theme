;;; atom-one-light-theme.el --- Atom One Light color theme
;;
;; Copyright 2016 Jonathan Chu
;;
;; Author: Jonathan Chu <me@jonathanchu.is>
;; URL: https://github.com/jonathanchu/atom-one-light-theme
;; Version: 0.1.0
;;
;;; Commentary:
;;
;; An Emacs port of the Atom One Light theme from Atom.io.
;;
;;; Code:

(deftheme atom-one-light
  "Atom One Light - An Emacs port of the Atom One Light theme from Atom.io.")

(defvar atom-one-light-colors-alist
  '(("atom-one-light-accent"   . "#526FFF")
    ("atom-one-light-fg"       . "#383A42")
    ("atom-one-light-bg"       . "#FAFAFA")
    ("atom-one-light-bg-1"     . "#121417")  ;; TODO
    ("atom-one-light-bg-hl"    . "#2F343D")  ;; TODO
    ("atom-one-light-mono-1"   . "#383A42")
    ("atom-one-light-mono-2"   . "#696C77")
    ("atom-one-light-mono-3"   . "#A0A1A7")
    ("atom-one-light-cyan"     . "#0184BC")
    ("atom-one-light-blue"     . "#4078F2")
    ("atom-one-light-purple"   . "#A626A4")
    ("atom-one-light-green"    . "#50A14F")
    ("atom-one-light-red-1"    . "#E45649")
    ("atom-one-light-red-2"    . "#CA1243")
    ("atom-one-light-orange-1" . "#986801")
    ("atom-one-light-orange-2" . "#C18401")
    ("atom-one-light-gray"     . "#3E4451")  ;; TODO
    ("atom-one-light-silver"   . "#AAAAAA")  ;; TODO
    ("atom-one-light-black"    . "#0F1011")) ;; TODO
  "List of Atom One Light colors.")

(defmacro atom-one-light-with-color-variables (&rest body)
  "Bind the colors list around BODY."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@ (mapcar (lambda (cons)
                      (list (intern (car cons)) (cdr cons)))
                    atom-one-light-colors-alist))
     ,@body))

;; theme code goes here

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'atom-one-light)

;; Local Variables:
;; no-byte-compile: t
;; End:
;;; atom-one-light-theme.el ends here

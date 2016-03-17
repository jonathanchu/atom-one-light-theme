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

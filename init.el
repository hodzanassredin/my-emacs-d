

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme")

(require 'color-theme)
 (color-theme-initialize)
 (load-file "~/.emacs.d/plugins/color-theme-twilight.el")
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-nav/")
 (require 'nav)



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

(require 'zencoding-mode)
 (add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes


(load-file "~/.emacs.d/plugins/cedet/common/cedet.el")
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu

(setq load-path (cons "~/.emacs.d/plugins/org/lisp" load-path))
(require 'org-install)
;; The following lines are always needed.  Choose your own keys.
     (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)
 (global-font-lock-mode 1)                     ; for all buffers

(setq org-agenda-files (list "~/org/tasks.org"
                             "~/org/test.org"))


;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; cl - Common Lisp Extension
(require 'cl)



(defvar MorosithII/packages '(
			      ;; --- Auto-completion ---
			      ;;auto-complete
			      ;; --- Better Editor ---
			      smooth-scrolling
			      hungry-delete
			      swiper
			      exec-path-from-shell
			      counsel
			      smartparens
			      popwin
			      nodejs-repl
			      popwin
			      window-numbering
			      flycheck
			      exec-path-from-shell
			      rainbow-delimiters
			      ;; --- Major Mode ---
			      js2-mode
			      json-mode
			      web-mode
			      markdown-mode
			      lua-mode
			      ;;python
			      elpy
			      ;;theme
			      nyan-mode
			      solarized-theme
			      apropospriate-theme
			      )"Default packages")

(setq package-selected-packages MorosithII/packages)



(defun MorosithII/packages-installed-p ()
  (loop for pkg in MorosithII/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (MorosithII/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg MorosithII/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(global-hungry-delete-mode)

;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)
(sp-local-pair '(emacs-lisp-mode lisp-interaction-mode) "'" nil :actions nil)
(setq show-paren-style 'expression)
(require 'rainbow-delimiters)
(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)


;; config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(add-hook 'after-init-hook 'global-company-mode)

(require 'popwin)    ;;when require, wh(setq company-minimum-prefix-length 1)en not require
(popwin-mode t)

;;set windows numbering
(require 'window-numbering)
(window-numbering-mode 1)


;;python
(require 'elpy nil t)  
(elpy-enable)
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
;;(require 'py-autopep8)
;;(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; Setup load-path, autoloads and your lisp system
;; Not needed if you install SLIME via MELPA
(setq inferior-lisp-program "sbcl")
;;(require 'slime-autoloads)
(setq slime-lisp-implementations
      '((sbcl ("sbcl" "--core" "sbcl.core-for-slime"))))
(setq slime-contribs '(slime-fancy));;use slime-fancy
(slime-autodoc-unload);;unload slime-autodoc to prevent unnecessary error messages.
(slime)

;;(require 'xcscope)
;;(require 'ecb)
(sp-local-pair 'emacs-lisp-mode "`" nil :actions nil)
(sp-local-pair 'lisp-mode "`" nil :actions nil)
(sp-local-pair 'lisp-mode "'" nil :actions nil)
(sp-local-pair 'slime-repl-mode "`" nil :actions nil)
(sp-local-pair 'slime-repl-mode "'" nil :actions nil)

(setq flycheck-javascript-eslint-executable   "/usr/bin/eslint")
(setq flycheck-eslintrc "~/.eslintrc.json")

;;nyan-mode
(nyan-mode t);;启动nyan-mode

(provide 'init-packages)





(setq ring-bell-function 'ignore)


(global-auto-revert-mode t)
(setq auto-save-default nil) ;; turn off auto-save
(global-linum-mode t)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8mo" "Morosithii")
					    ;; Microsoft
					    ("8ms" "Macrosoft")
					    ;;for clang
					    ("cic" "#include <cstdio>")
					    ("cii" "#include <iostream>")
					    ("cisp" "#include <")
					    ("cit" "#include <ctime>")
					    ("cimt" "#include <cmath>")
					    ("cis" "#include <cstring>")
					    ("cuns" "using namespace std;")
					    ("cdfm" "#define MAXN")
					    ("cdfi" "#define INFN")
					    ("cm" "int main(){")
					    ))

(setq make-backup-files nil)

(setq auto-save-default nil)


(fset 'yes-or-no-p 'y-or-n-p)
(recentf-mode 1)			
(setq recentf-max-menu-items 25)



(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)


(provide 'init-better-defaults)

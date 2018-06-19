
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(global-set-key (kbd "<f1>") 'open-my-init-file)
(global-set-key (kbd "<f2>") 'eshell)
(global-set-key (kbd "<f3>") 'elpy-shell-send-group-and-step-and-go)
(global-set-key (kbd "<f4>") 'eval-buffer)


(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-c p f") 'counsel-git)

(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'init-keybindings)



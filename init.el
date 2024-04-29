;; tab bar mode
(tab-bar-mode t)

;; auto complete parens
(electric-pair-mode)

;; Reload emacs config macro
(defun reload-init-file ()
  (interactive)
  (load-file user-init-file))
(global-set-key (kbd "C-c C-l") 'reload-init-file)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
	                  '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(lsp-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; lsp-mode settings.
(setq lsp-keymap-prefix "s-l")

(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)

;; HOOKS
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; org-mode configuration
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; SET KEY ALIASES
(global-set-key [(control c) (w)] 'clipboard-kill-ring-save)
(global-set-key [(control c) (y)] 'clipboard-yank)
(global-set-key [(control c) (c)] 'comment-region)
(global-set-key [(control c) (v)] 'uncomment-region)
(global-set-key [(control c) (n)] 'global-linum-mode)

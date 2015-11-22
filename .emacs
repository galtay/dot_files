(setq inhibit-startup-message t)
(global-font-lock-mode 1)
(show-paren-mode t)
(column-number-mode t)

(load-theme 'misterioso t)
(set-cursor-color "red")

; allow shift-left, shift-up, ... to switch frames
(windmove-default-keybindings)

; delete annoying whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; dont use tabs
(setq indent-tabs-mode nil)

; add package manager repos
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

; add mode associations
;===================================================================

; markdown
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

; *.rc files
(add-to-list 'auto-mode-alist '("\\.*rc$" . conf-unix-mode))

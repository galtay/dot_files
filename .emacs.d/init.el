;;; emacs initialization

(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(
      ("melpa" . "https://melpa.org/packages/")
      ("gnu" . "https://elpa.gnu.org/packages/")
      ("marmalade" . "https://marmalade-repo.org/packages/")

))
(setq package-enable-at-startup nil)
(package-initialize)

;;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(setq inhibit-startup-message t)
(global-font-lock-mode 1)
(show-paren-mode t)
(column-number-mode t)

; allow shift-left, shift-up, ... to switch frames
(windmove-default-keybindings)

; dont use tabs
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'whitespace-cleanup)

;; yaml-mode
(use-package yaml-mode
  :ensure t)


;; builtin theme
;; (load-theme 'misterioso t)

;; use-package to install a bunch of themes
;; last one will be active
(use-package abyss-theme
  :ensure t)

(use-package hc-zenburn-theme
  :ensure t)

(use-package dracula-theme
  :ensure t)

(use-package afternoon-theme
  :ensure t)

(use-package molokai-theme
  :ensure t)

(use-package moe-theme
  :ensure t)
(load-theme 'moe-dark t)


(set-cursor-color "red")


;; set window size
(when window-system (set-frame-size (selected-frame) 85 50))

; add mode associations
;===================================================================

; markdown
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

; *.rc files
(add-to-list 'auto-mode-alist '("\\.*rc$" . conf-unix-mode))

; *.m files
(add-to-list 'auto-mode-alist '("\\.*m$" . octave-mode))

; *.yaml files
(add-to-list 'auto-mode-alist '("\\.yaml" . yaml-mode))

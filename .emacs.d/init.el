;;; emacs initialization

(require 'package)
(setq package-archives '(
      ("gnu" . "https://elpa.gnu.org/packages/")
      ("marmalade" . "https://marmalade-repo.org/packages/")
      ("melpa" . "https://melpa.org/packages/")
))
(setq package-enable-at-startup nil)
(package-initialize)

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


(load-theme 'misterioso t)
;;(load-theme 'abyss t)
;;(load-theme 'afternoon t)
;;(load-theme 'hc-zenburn t)
;;(load-theme 'deeper-blue t)
;;(load-theme 'distinguished t)
;;(load-theme 'dracula t)
;;(load-theme 'eclipse t)
;;(load-theme 'firebelly t)
;;(load-theme 'firecode t)
;;(load-theme 'gotham t)
;;(load-theme 'grandshell t)
(set-cursor-color "red")

;; add line numbers
(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d ")

;; directory view with m-x dirtree
(autoload 'dirtree "dirtree" "Add directory to tree view" t)


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

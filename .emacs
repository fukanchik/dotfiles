(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(transient-mark-mode t)
(set-face-attribute 'region nil :background "dark orange")

(setq line-move-visual nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package web-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'mule-utf-8)
(setq default-input-method 'russian-computer)
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(setq x-select-request-type '(UTF8_STRING_COMPOUND_TEXT TEXT STRING))

(show-paren-mode 1)

(global-set-key (kbd "C-c l") 'goto-line)

;;;;;;;;;;;;;;;;;;;;;;;; RECENTF ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 1000)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(menu-bar-mode 0)
(tool-bar-mode 0)

(add-to-list 'load-path "~/.emacs.d/lisp")
(autoload 'scad-mode "scad-mode" "Major mode for editing SCAD code." t)
(add-to-list 'auto-mode-alist '("\\.scad$" . scad-mode))

(global-set-key (kbd "C-n") 'forward-line)

(require 'web-mode)

(defvar *afilename-cmd* 
  '(("/tmp/0/fitness/gtk/src/main.c" . "/tmp/0/fitness/gtk/x.sh")
    ("xxx" . "xxx"))
  "Test")

(defun recomp ()
  "Execute a command after saved a specific file."
  (let* ((match (assoc (buffer-file-name) *afilename-cmd*)))
    (when match
      (shell-command (cdr match)))))

(add-hook 'after-save-hook 'recomp)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default web-mode-markup-indent-offset  2)
(setq tab-width 2)
(setq indent-tabs-mode nil)
(setq web-mode-markup-indent-offset  2)

(defun fullscreen ()
  " Open emacs in fullscreen mode "
  (set-frame-size (selected-frame) 205 55)
  (set-frame-parameter nil 'fullscreen 'fullboth)
  ;(set-frame-parameter nil 'fullscreen 'maximized)
  ;(toggle-frame-fullscreen)
)
(fullscreen)


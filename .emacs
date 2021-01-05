(package-initialize)

(transient-mark-mode t)

;(set-default-font "-*-*-medium-r-normal-*-14-*-*-*-*-*-iso10646-1")

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




(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 1000)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(menu-bar-mode 0)
(tool-bar-mode 0)

(add-to-list 'load-path "~/.emacs.d/lisp")
(autoload 'scad-mode "scad-mode" "Major mode for editing SCAD code." t)
(add-to-list 'auto-mode-alist '("\\.scad$" . scad-mode))
;;(require 'scad-mode)
;;(insert (prin1-to-string load-path))



(set-frame-size (selected-frame) 181 47)

;(global-set-key "\C-?у" 'move-end-of-line)
(global-set-key "\C-n" 'forward-line)

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

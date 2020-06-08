(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (tsdh-light)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-builtin-face ((t (:foreground "#008000"))))
 '(font-lock-comment-face ((t (:foreground "#808080"))))
 '(font-lock-constant-face ((t (:foreground "#0D98BA"))))
 '(font-lock-keyword-face ((t (:foreground "#A020F0"))))
 '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face))))
 '(font-lock-string-face ((t (:foreground "#CE7B00"))))
 '(font-lock-type-face ((t (:foreground "#0000E6"))))
 '(font-lock-variable-name-face ((t (:foreground "#944900"))))
 '(show-paren-match ((t (:background "#F3FF0F"))))
 '(show-paren-mismatch ((t (:background "#FF0000" :foreground "#FFFFFF" :weight bold)))))
(set-default-font "Andale Mono-14")
(set-face-attribute 'region nil :background "#ADD6FF")
(global-linum-mode 1)
(blink-cursor-mode 0)
(setq default-cursor-type 'hbar)
(set-cursor-color "#000000")
(global-hl-line-mode 1)
(set-face-background 'hl-line "#E9EFF8")
(cua-mode t)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-S-s") 'write-file)
(global-set-key (kbd "C-q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-1") 'open-line)
(global-set-key (kbd "TAB") 'self-insert-command)
(global-set-key (kbd "C-o") 'find-file)
(global-unset-key (kbd "C-f"))
(global-unset-key (kbd "C-S-f"))
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-S-f") 'isearch-backward)
(defadvice find-file-read-args (around find-file-read-args-always-use-dialog-box act)
	(let ((last-nonmenu-event nil))
		ad-do-it))
;Simulate invoking menu item as if by the mouse. See “use-dialog-box”.
(setq backward-delete-char-untabify-method nil)
;(setq-default line-spacing 0)
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq pascal-indent-level 4)
;(setq python-indent-offset 4)
(add-hook 'python-mode-hook
         (lambda ()
           (setq indent-tabs-mode t)
           (setq python-indent 4)
           (setq tab-width 4))
         (tabify (point-min) (point-max)))
(electric-pair-mode 1)
(setq electric-pair-preserve-balance nil)
(show-paren-mode 1)
(setq show-paren-delay 0)
;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))
(package-initialize)
(unless (package-installed-p 'scroll-restore)
  (package-refresh-contents)
  (package-install 'scroll-restore))
(require 'scroll-restore)
(scroll-restore-mode 1)
(unless (package-installed-p 'highlight-indent-guides)
  (package-refresh-contents)
  (package-install 'highlight-indent-guides))
(require 'highlight-indent-guides)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)
;(setq highlight-indent-guides-character ?\|)
;(setq highlight-indent-guides-character ?\¦)
(setq highlight-indent-guides-character ?\┊)
;(setq highlight-indent-guides-character ?\⋮)
(setq highlight-indent-guides-auto-enabled nil)
(set-face-foreground 'highlight-indent-guides-character-face "black")
(setq highlight-indent-guides-responsive 'top)
; For information about GNU Emacs and GNU system, type C-h, C-a.

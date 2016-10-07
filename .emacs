;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Add user plugins folder
(add-to-list 'load-path "~/.emacs.d/user_plugins/")

;; Stop creating backup files
(setq make-backup-files nil)

;; Get rid of stupid emacs tab bullshit
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)

;; Permanently enable line nums, highlight
(global-linum-mode t)
(require 'hlinum)
(hlinum-activate)

;; Permanently remove splash screen
(setq inhibit-splash-screen t)

;; Remove emacs status line
(setq-default mode-line-format nil)

 ;; Remove messages/fanfare from emacs
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (manoj-dark)))
 '(package-selected-packages (quote (markdown-mode)))
 '(tab-stop-list (number-sequence 4 200 4)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Permanently map forward and previous paragraphs to M-n and M-p
(global-set-key (kbd "M-n") 'forward-paragraph) ; Alt+n
(global-set-key (kbd "M-p") 'backward-paragraph) ; Alt+p

;; (set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))

;; assign toggle to C-c t
(eval-when-compile (require 'cl))
(defun toggle-transparency ()
  (interactive)
  (if (/=
       (cadr (frame-parameter nil 'alpha))
       100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(85 50))))
 (global-set-key (kbd "C-c t") 'toggle-transparency)

;; Set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
     (set-frame-parameter (selected-frame) 'alpha value))

;; Enable yang-mode for .yang files
(require 'yang-mode)

;; Highlight whitespaces in all buffers, delete trailing whitespaces upon save
(require 'whitespace)
(setq-default whitespace-style '(face trailing lines empty indentation::space))
(setq-default whitespace-line-column 80)
(global-whitespace-mode 1)
(whitespace-mode 1)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Stop creating backup files
(setq make-backup-files nil)

;; YANG MODE ====================
;; (add-to-list 'load-path "~/.emacs.d/")
;; (autoload 'yang-mode "yang-mode" "Major mode for editing YANG modules."
;;     t)
;; (add-to-list 'auto-mode-alist '("\\.yang$" . yang-mode))
;; (require 'yang-mode nil t)

;; (defun my-yang-mode-hook ()
;;   "Configuration for YANG Mode. Add this to `yang-mode-hook'."
;;   (if window-system
;;       (progn
;; 	(c-set-style "BSD")
;; 	(setq indent-tabs-mode nil)
;; 	(setq c-basic-offset 2)
;; 	(setq font-lock-maximum-decoration t)
;; 	(font-lock-mode 3))))

;; (add-hook 'yang-mode-hook 'my-yang-mode-hook)
;; (setq blink-matching-paren-distance nil)

;; (defun show-onelevel ()
;;     "show entry and children in outline mode"
;;     (interactive)
;;     (show-entry)
;;     (show-children))
  
;; (defun my-outline-bindings ()
;;     "sets shortcut bindings for outline minor mode"
;;     (interactive)
;;     (local-set-key [?\C-,] 'hide-body)
;;     (local-set-key [?\C-.] 'show-all)
;;     (local-set-key [C-up] 'outline-previous-visible-heading)
;;     (local-set-key [C-down] 'outline-next-visible-heading)
;;     (local-set-key [C-left] 'hide-subtree)
;;     (local-set-key [C-right] 'show-onelevel)
;;     (local-set-key [M-up] 'outline-backward-same-level)
;;     (local-set-key [M-down] 'outline-forward-same-level)
;;     (local-set-key [M-left] 'hide-subtree)
;;     (local-set-key [M-right] 'show-subtree))
  
;; (add-hook
;;     'outline-minor-mode-hook
;;     'my-outline-bindings)
  
;; (defconst sort-of-yang-identifier-regexp "[-a-zA-Z0-9_\\.:]*")
;; (add-hook
;;     'yang-mode-hook
;;     '(lambda ()
;;         (outline-minor-mode)
;;         (setq outline-regexp
;;         (concat "^ *" sort-of-yang-identifier-regexp " *"
;;           sort-of-yang-identifier-regexp
;;           " *{"))))

;; END YANG MODE ================

;; Get rid of stupid emacs tab bullshit
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)

;; Permanently enable line nums
(global-linum-mode t)

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

 ;; Always use manoj-dark theme
 '(custom-enabled-themes (quote (manoj-dark)))
 ;; Tab 4 spaces
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

;; emacs paste to mac osx clipboard
;;(defun copy-from-osx ()
;;  (shell-command-to-string "pbpaste"))
;;(defun paste-to-osx (text &optional push)
;;  (let ((process-connection-type nil))
 ;;   (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
 ;;     (process-send-string proc text)
 ;;     (process-send-eof proc))))

;;(setq interprogram-cut-function 'paste-to-osx)
;;(setq interprogram-paste-function 'copy-from-osx)

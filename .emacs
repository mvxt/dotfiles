;; Stop creating backup files
(setq make-backup-files nil)

;; Get rid of stupid emacs tab bullshit
(global-set-key (kbd "TAB") 'self-insert-command)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; Permanently enable line nums
(global-linum-mode t)

;; Remove splash screen
(setq inhibit-splash-screen t)

;; Remove emacs status line
(setq-default mode-line-format nil)

 ;; Remove messages/fanfare from emacs
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

(custom-set-variables
 (setq tab-stop-list (number-sequence 4 200 4))

 ;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
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

;; set color theme
(load-file "~/dev/emacs/color-theme-gruber-darker.el")
(color-theme-gruber-darker)

;;; jsim support, assumes jsim.el lives in your home directory
(autoload 'jsim-mode "~/dev/emacs/jsim" nil t)
(setq auto-mode-alist (cons '("\.jsim$" . jsim-mode) auto-mode-alist))
(add-hook 'jsim-mode-hook 'turn-on-font-lock)

;; set font size
(set-face-attribute 'default (selected-frame) :height 110)

;; Set html preferences
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)
            (setq indent-tabs-mode t)))


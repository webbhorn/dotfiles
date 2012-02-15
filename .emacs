;; set color theme
(load-file "~/dev/emacs/color-theme-gruber-darker.el")
(color-theme-gruber-darker)

;; set font size
(set-face-attribute 'default (selected-frame) :height 150)


;; Set html preferences
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)
            (setq indent-tabs-mode t)))


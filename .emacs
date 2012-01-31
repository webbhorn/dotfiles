(load-file "~/dev/emacs/color-theme-gruber-darker.el")
(color-theme-gruber-darker)
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)
            (setq indent-tabs-mode t)))
;;; config/editor.el --- Emacs editor configuration. -*- lexical-binding: t -*-

;;; Code:

;; search
(use-package ivy
  :ensure t
  :config (setq ivy-use-selectable-prompt t)
  :init (ivy-mode 1))

;;; config/editor.el ends here

;;; config/programming.el --- ELisp configuration for programming. -*- lexical-binding: t -*-

;;; Code:

;; completion
(use-package company
  :ensure t
  :hook (after-init . global-company-mode))

(use-package company-box
  :ensure t
  :after company
  :hook (global-company-mode . company-box-mode))

(use-package company-quickhelp
  :ensure t
  :after company
  :hook (global-company-mode . company-quickhelp-mode))

;; parens autocompletion
(use-package smartparens
  :ensure t)

;; version control
(use-package magit
  :ensure t)

;;; config/programming.el ends here

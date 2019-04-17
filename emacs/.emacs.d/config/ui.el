;;; config/ui.el --- Emacs UI configuration. -*- lexical-binding: t -*-

;;; Code:

;; minimal view
(menu-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(scroll-bar-mode -1)

;; icons
(use-package all-the-icons
  :ensure t)

;; theme
(use-package doom-themes
  :ensure t
  :init (load-theme 'doom-solarized-light t))

;; mode line
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :init
  (setq doom-modeline-major-mode-color-icon t))

;;; config-ui.el ends here

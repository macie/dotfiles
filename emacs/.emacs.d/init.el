;;; init.el --- Emacs configuration. -*- lexical-binding: t -*-

;;; Code:

;; use-package
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; load custom configuration
(use-package load-relative
  :ensure t)
(load-relative "config/ui")
(load-relative "config/editor")
(load-relative "config/programming")

;;; init.el ends here

;; Disable Emacs startup screen
(setq inhibit-startup-screen t)

;; packages
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

(require 'package)
(package-initialize)

(setq my-packages
      '(cider
        clojure-mode
        magit
        wrap-region))

(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

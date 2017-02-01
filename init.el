(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'load-path (expand-file-name "~/gits/3rd/org-mode/lisp"))


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(bongo-enabled-backends (quote (vlc)))
 '(cider-annotate-completion-candidates t)
 '(cider-eldoc-display-for-symbol-at-point t)
 '(cider-use-tooltips t)
 '(compilation-ask-about-save nil)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(eldoc-idle-delay 10)
 '(electric-indent-mode t)
 '(elm-tags-exclude-elm-stuff nil)
 '(emacspeak-auditory-icon-function (quote emacspeak-queue-auditory-icon))
 '(fci-rule-color "#073642")
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(line-number-mode t)
 '(magit-diff-use-overlays nil)
 '(nrepl-sync-request-timeout 30)
 '(org-html-checkbox-type (quote unicode))
 '(package-archive-priorities (quote (("melpa-stable" . 20) ("gnu" . 10) ("melpa" . 0))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("" . "https://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (diminish psc-ide purescript-mode psci exec-path-from-shell bongo flycheck company elm-mode circe org-bullets magit clj-refactor rainbow-delimiters ess cider cider-eval-sexp-fu ##))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "~/.emacs.d/configuration.org")

(company-mode)
(winner-mode 1)
(add-to-list 'company-backends 'company-elm)
(when (memq window-system '(mac ns)) (exec-path-from-shell-initialize))

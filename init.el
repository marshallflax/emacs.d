;; Emacspeak

;; (add-to-list 'exec-path "/Users/mgflax/gits/emacspeak/servers")
(add-to-list 'exec-path "/usr/local/bin")

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq mac-default-speech-rate 450)
(setq load-path (cons "~/gits/emacspeak/lisp" load-path))
(setq emacspeak-directory "~/gits/emacspeak")

(setq dtk-program "log-mac")
;; (setq dtk-program "mac")

(load-file "~/gits/emacspeak/lisp/mac-voices.el")
;;; Voice rate:
(load-file "~/gits/emacspeak/lisp/emacspeak-setup.el")
;; Uncomment to try sound icons:
;(emacspeak-toggle-auditory-icons t)
;(emacspeak-sounds-select-theme "chimes-stereo/")
(emacspeak-tts-startup-hook)
;; Mac keyboard (not emacspeak-related though)
(setq default-input-method "MacOSX")
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'none)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(cider-annotate-completion-candidates t)
 '(cider-eldoc-display-for-symbol-at-point t)
 '(cider-use-tooltips t)
 '(custom-enabled-themes (quote (deeper-blue)))
 '(eldoc-idle-delay 10)
 '(emacspeak-auditory-icon-function (quote emacspeak-queue-auditory-icon))
 '(line-number-mode nil)
 '(nrepl-sync-request-timeout 30)
 '(package-selected-packages
   (quote
    (clj-refactor rainbow-delimiters ess cider cider-eval-sexp-fu ##)))
 '(transient-mark-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

 (require 'ido)
    (ido-mode t)

(require 'clj-refactor)
(add-hook 'clojure-mode-hook (lambda ()
                               (clj-refactor-mode 1)
                               ;; insert keybinding setup here
                               ))

(cljr-add-keybindings-with-prefix "C-c C-m")

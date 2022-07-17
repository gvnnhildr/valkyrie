;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;;require the EXWM window manager
;;(require 'exwm)
;;(require 'exwm-config)
;;(exwm-config-default)
;;(require 'exwm-randr)
;;(setq exwm-radr-workspace-output-plist '(0 "DVI-0" 1 "DVI-1"))
;;(add-hook 'exwm-randr-screen-change-hook
;;          (lambda ()
;;            (start-process-shell-command
;;             "xrandr" nil "xrandr --output DVI-1 --right-of DVI-0 --auto")))
;;(exwm-randr-enable)
;;(require 'exwm-systemtray)
;;(exwm-systemtray-enable)

;; set org directory before org-mode loads
;; ~/org/ is default. if changed, must be set before org-mode loads.
(setq org-directory "~/org/")

;; uses key-chord package (see packages.el)
;; and set preferred key combos for exiting 'insert' mode
;; like I do in my vim config.

(require 'key-chord)
(key-chord-mode t)
(key-chord-define-global "kj" 'evil-normal-state)
(key-chord-define-global "KJ" 'evil-normal-state)

;; Activate org-bullets.
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. Optional stuff.
(setq user-full-name "דָּוִד"
      user-mail-address "davidgunnell@pm.me")
(after! org
  (setq org-agenda-files (directory-files-recursively "~/org/" "\\.org$")))

;; MODUS THEME CONFIGURATION
(after! org
(setq modus-themes-mode-line '(borderless accented))
(setq modus-themes-paren-match '(bold intense))
(load-theme 'modus-vivendi t))

;; alarm sounds for org mode. requires DBUS notifcation-daemon.
;; (require 'org)
;;    (setq org-clock-sound "~/.config/doom/hey.wav")
;; (after! org
;;  (setq org-agenda-files (directory-files-recursively "~/org/" "\.org$")))
;; (after! org (setq org-hide-emphasis-markers t))

;; DIRED configuration
;; Open dired in same buffer
(put 'dired-find-alternate-file 'disabled nil)
;; Sort Dired buffers
(setq dired-listing-switches "-agho --group-directories-first")

;; Trying to full screen. not working for some reason.
;; (add-to-list 'initial-frame-alist '(fullscreen))
;; Some window managers may not understand/work with =maximized= (or may not
;; produce the desired effect), in that case try ~fullboth~ or ~fullscreen~.

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; > I commented this out. Just uncomment the ;;;; line to activate the theme
;; normally. Otherwise, skip to the next block for the config/load of modus.
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
 (setq doom-theme 'modus-vivendi)
;; these are some of my faves:
;; doom-acario-dark, doom-ir-black, doom-moonlight, doom-laserwave, doom-outrun-electric,
;; doom-manegarm, doom-meltbus, manoj-dark, Modus themes.

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type nil)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; (setq org-directory "~/org/")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq org-journal-date-prefix "#+TITLE: "
      org-journal-time-prefix "* "
      org-journal-date-format "%a, %Y-%m-%d"
      org-journal-file-format "%Y-%m-%d.org")

;; Projectile configuration
(setq projectile-require-project-root t) ;;generate error when running projectile outside of project directory. e.g. ~/

;;; packages.el --- raf-code layer packages file for Spacemacs.
;;; Code:

(defconst raf-code-packages
  '(
    nord-theme
    ;;;powerline-evil
    telephone-line
    add-node-modules-path
    ripgrep
    sqlite3
    ob-sql-mode
    fzf
    ob-go
    org
    (copilot :location (recipe
                        :fetcher github
                        :repo "copilot-emacs/copilot.el"
                        :files ("*.el" "dist"))
             )

    )
  )


(defun raf-code/init-ob-sql-mode ()
  (use-package ob-sql-mode)
  (add-to-list 'org-babel-load-languages '(sqlite . t))
  )

(defun raf-code/init-nord-theme ()
  (use-package nord-theme
    :init
    (spacemacs/load-theme 'nord :disable t)
    )
  )

(defun raf-code/init-telephone-line ()
  (use-package telephone-line)
  (telephone-line-mode 1)
  )

(defun raf-code/init-powerline-evil ()
  (use-package powerline-evil)
  (setq dotspacemacs-mode-line-theme '(vim-powerline :separator 'slant))
  )

(defun raf-code/init-sqlite3 ()
  (use-package sqlite3)
  )


(defun raf-code/init-org ()
  (setq org-enable-modern-support t)
  (setq-default org-enable-roam-support t)
  )

(defun raf-code/post-init-org ()
  ;; org-roam
  (setq org-agenda-files  (list "~/Dropbox/org/"))

  (setq org-directory "~/Dropbox/org/")
  (setq org-default-notes-file (concat org-directory "inbox.org"))
  (setq org-roam-directory "~/Dropbox/notes/")
  )

(defun raf-code/init-ripgrep()
  (use-package ripgrep)
  )

(defun raf-code/init-fzf()
  (use-package fzf)
  )

(defun raf-code/init-asdf.el()
  (use-package asdf)
  (asdf-enable)
  )

(defun raf-code/init-ob-go()
  (use-package ob-go)
  )

(defun raf-code/init-copilot ()
  (use-package copilot
    :defer t)
  (with-eval-after-load 'company
    ;; disable inline previews
    (delq 'company-preview-if-just-one-frontend company-frontends))
  (with-eval-after-load 'copilot
    (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
    (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)
    (define-key copilot-completion-map (kbd "C-TAB") 'copilot-accept-completion-by-word)
    (define-key copilot-completion-map (kbd "C-<tab>") 'copilot-accept-completion-by-word))
  (add-hook 'prog-mode-hook 'copilot-mode)
  )

;;; packages.el ends here

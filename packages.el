;;; packages.el --- raf-code layer packages file for Spacemacs.
;;; Code:

(defconst raf-code-packages
  '(
    nord-theme
    powerline-evil
    add-node-modules-path
    org-modern
    ripgrep
    sqlite3
    ob-sql-mode
    fzf
    ob-go
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
    (load-theme 'nord t)
    )
  )

(defun raf-code/init-powerline-evil ()
  (use-package powerline-evil)
  (setq dotspacemacs-mode-line-theme '(vim-powerline :separator 'slant))
  )

(defun raf-code/init-sqlite3 ()
  (use-package sqlite3)
  )

(defun raf-code/init-org-modern()
  (use-package org-modern)
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

;; Org-mode settings
;;(defun raf-code/init-org-mode()
;;  (use-package org-bullets
;;    :config
;;    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
;;
;;  (setq org-hide-emphasis-markers t)
;;  (font-lock-add-keywords 'org-mode
;;                          '(("^ *\\([-]\\) "
;;                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
;;
;;
;;
;;  (let* ((variable-tuple
;;          (cond ((x-list-fonts "ETBembo")         '(:font "ETBembo"))
;;                ((x-list-fonts "Source Sans Pro") '(:font "Source Sans Pro"))
;;                ((x-list-fonts "Lucida Grande")   '(:font "Lucida Grande"))
;;                ((x-list-fonts "Verdana")         '(:font "Verdana"))
;;                ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
;;                (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
;;         (base-font-color     (face-foreground 'default nil 'default))
;;         (headline           `(:inherit default :weight bold :foreground ,base-font-color)))
;;
;;    (custom-theme-set-faces
;;     'user
;;     `(org-level-8 ((t (,@headline ,@variable-tuple))))
;;     `(org-level-7 ((t (,@headline ,@variable-tuple))))
;;     `(org-level-6 ((t (,@headline ,@variable-tuple))))
;;     `(org-level-5 ((t (,@headline ,@variable-tuple))))
;;     `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
;;     `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
;;     `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
;;     `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
;;     `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))))
;;  )
;;; packages.el ends here

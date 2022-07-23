;;; packages.el --- raf-code layer packages file for Spacemacs.
;;; Code:

(defconst raf-code-packages
  '(nord-theme
    powerline-evil
    add-node-modules-path
    sml-mode
    )
  )

(defun raf-code/init-nord-theme ()
  (use-package nord-theme
    :init
    ; (add-to-list 'custom-theme-load-path (expand-file-name "/home/rafael/.emacs.d/elpa/develop/nord-theme-20200620.1122/")) ; TODO: need to fix this
    (load-theme 'nord t)
    )
  )

(defun raf-code/init-sml-mode ()
  (use-package sml-mode)
  )

 (defun raf-code/init-powerline-evil ()
    (use-package powerline-evil)
  (setq dotspacemacs-mode-line-theme '(vim-powerline :separator 'slant))
  )


  (defun raf-code/init-org-mode()
     (use-package org-bullets
    :config
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

    (setq org-hide-emphasis-markers t)  
    (font-lock-add-keywords 'org-mode
                          '(("^ *\\([-]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

    

     (let* ((variable-tuple
          (cond ((x-list-fonts "ETBembo")         '(:font "ETBembo"))
                ((x-list-fonts "Source Sans Pro") '(:font "Source Sans Pro"))
                ((x-list-fonts "Lucida Grande")   '(:font "Lucida Grande"))
                ((x-list-fonts "Verdana")         '(:font "Verdana"))
                ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
                (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
         (base-font-color     (face-foreground 'default nil 'default))
         (headline           `(:inherit default :weight bold :foreground ,base-font-color)))

    (custom-theme-set-faces
     'user
     `(org-level-8 ((t (,@headline ,@variable-tuple))))
     `(org-level-7 ((t (,@headline ,@variable-tuple))))
     `(org-level-6 ((t (,@headline ,@variable-tuple))))
     `(org-level-5 ((t (,@headline ,@variable-tuple))))
     `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
     `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
     `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
     `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
     `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))))
    )
;;; packages.el ends here

;;; packages.el --- raf-code layer packages file for Spacemacs.
;;; Code:

(defconst raf-code-packages
  '(nord-theme
    add-node-modules-path
    sml-mode
    )
  )

(defun raf-code/init-nord-theme ()
  (use-package nord-theme
    :init
    (add-to-list 'custom-theme-load-path (expand-file-name "/home/rafael/.emacs.d/elpa/develop/nord-theme-20200620.1122/")) ; TODO: need to fix this
    (load-theme 'nord t)
    )
  )

(defun raf-code/init-sml-mode ()
  (use-package sml-mode)
  )

;;; packages.el ends here

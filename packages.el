;;; packages.el --- raf-code layer packages file for Spacemacs.
;;; Code:

(defconst raf-code-packages
  '(nord-theme)
)

(defun raf-code/init-nord-theme ()
  (use-package nord-theme
    :init
    (add-to-list 'custom-theme-load-path (expand-file-name "/home/rafael/.emacs.d/elpa/develop/nord-theme-20200620.1122/")) ; TODO: need to fix this
    (load-theme 'nord t)
  )
)


;;; packages.el ends here

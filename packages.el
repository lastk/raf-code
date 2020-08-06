;;; packages.el --- raf-code layer packages file for Spacemacs.
;;; Code:

(defconst raf-code-packages
  '(nord-theme)
)

(defun raf-code/init-nord-theme ()
  (use-package nord-theme
    :init
    (load-theme 'nord t)
  )
)


;;; packages.el ends here

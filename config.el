;;; Elixir config
(add-to-list 'exec-path "/opt/elixir-ls/")
(setq-default elixir-backend 'lsp)

;;; Scala config
(setq-default scala-enable-eldoc t)
(setq-default scala-enable-gtags t)
(setq-default scala-auto-start-backend t)


;;; Ruby
(setq-default ruby-enable-enh-ruby-mode t)
;;(setq-default ruby-backend 'robe)
(setq-default ruby-insert-encoding-magic-comment nil)

;;;; Python
(setq-default python-backend 'anaconda)
(setq-default python-format-on-save t)


 ;;; TypeScript
(setq-default typescript-fmt-on-save t)
(setq-default typescript-linter 'tslint)
(setq-default dotspacemacs-configuration-layers '(
                                                  (typescript :variables typescript-backend 'lsp)))
                                        ;(setq-default tide-tsserver-executable "/usr/bin/tsserver")

;;; Javascript

(setq-default js-indent-level 2)
(setq-default
 ;; web-mode
 web-mode-markup-indent-offset 2
 web-mode-css-indent-offset 2
 web-mode-code-indent-offset 2
 web-mode-attr-indent-offset 2)

(eval-after-load 'js-mode
  '(add-hook 'js-mode-hook #'add-node-modules-path))

;;; org-roam
;;; https://github.com/syl20bnr/spacemacs/pull/14004/files
(setq org-roam-directory "~/Dropbox/notes")
(setq-default org-enable-roam-support t)


;;; multiple-cursors
(setq-default dotspacemacs-configuration-layers '(
                                                  (multiple-cursors :variables multiple-cursors-backend 'evil-mc)))
;; rip grep
(custom-set-variables
 '(helm-ag-base-command "rg --no-heading")
 `(helm-ag-success-exit-status '(0 2)))


;; Copilot

;; accept completion from copilot and fallback to company

(with-eval-after-load 'company
  ;; disable inline previews
  (delq 'company-preview-if-just-one-frontend company-frontends))

(with-eval-after-load 'copilot
  (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
  (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)
  (define-key copilot-completion-map (kbd "C-TAB") 'copilot-accept-completion-by-word)
  (define-key copilot-completion-map (kbd "C-<tab>") 'copilot-accept-completion-by-word))

(add-hook 'prog-mode-hook 'copilot-mode)

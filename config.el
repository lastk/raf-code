;;; Elixir config
(add-to-list 'exec-path "/opt/elixir-ls/")
(setq-default elixir-backend 'lsp)

;;; Scala config
(setq-default scala-enable-eldoc t)
(setq-default scala-enable-gtags t)
(setq-default scala-auto-start-backend t)


;;; Ruby
(setq-default ruby-enable-enh-ruby-mode t)
(setq-default ruby-backend 'lsp)

;;;; Python
(setq-default python-backend 'anaconda)
(setq-default python-format-on-save t)


  ;;; TypeScript 
(setq-default typescript-fmt-on-save t)
(setq-default typescript-linter 'tslint)
(setq-default tide-tsserver-executable "/usr/bin/tsserver")

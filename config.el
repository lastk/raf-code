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

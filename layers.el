(configuration-layer/declare-layers '(auto-completion
                                      git
                                      markdown
                                      org
                                      syntax-checking
                                      version-control
                                      yaml
                                      ;;ivy
                                      compleseus
                                      shell
                                      (shell :variables shell-default-shell 'ansi-term)
                                      (shell :variables shell-default-term-shell "/bin/zsh")
                                      (ruby :variables ruby-backend 'robe )
                                      ruby-on-rails
                                      gtags
                                      fasd
                                      javascript
                                      typescript
                                      vue
                                      vim-powerline
                                      ;;elixir
                                      treemacs
                                      go
                                      dap
                                      (lsp :variables lsp-lens-enable t lsp-use-lsp-ui t )
                                      web-beautify
                                      (html :variables css-enable-lsp t scss-enable-lsp t html-enable-lsp t)
                                      multiple-cursors
                                      restclient
                                      spacemacs-project
                                      spacemacs-editing
                                      spacemacs-editing-visual
                                      spacemacs-evil
                                      spacemacs-visual
                                      spacemacs-org
                                      spacemacs-completion
                                      spacemacs-modeline
                                      ))

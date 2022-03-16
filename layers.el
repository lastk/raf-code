(configuration-layer/declare-layers '(auto-completion
                                      git
                                      markdown
                                      org
                                      syntax-checking
                                      version-control
                                      yaml
                                      helm
                                      shell
                                      (shell :variables shell-default-shell 'ansi-term)
                                      (shell :variables shell-default-term-shell "/bin/zsh")
                                      ruby
                                      ruby-on-rails
                                      gtags
                                      fasd
                                      restclient
                                      javascript
                                      typescript
                                      vue
                                      vim-powerline
                                      elixir
                                      treemacs
                                      lsp
                                      scala-lsp
                                      sml
                                      ))

## [fish_prompt.fish](https://github.com/Thayato0418/dotfiles/blob/main/fish_prompt.fish)
- 参照：https://github.com/kurenaif
- login時にfishにしたい
  
  `which fish`でfishのpathが返ってくるのでそのpathにchshで変更する
  ```
  chsh -s `which fish`
  ```
  
## [.vimrc](https://github.com/Thayato0418/dotfiles/blob/main/.vimrc)
- `plug 'morhetz/gruvbox'`のPlugInstallのながれ
  - `cd ~/.vim/bundle/`
    
  - `git clone https://github.com/morhetz/gruvbox`<br>
    →https://github.com/morhetz/gruvbox
    
  - ~/.vimrcに以下を記載する
    ```
    call plug#begin('~/.vim/bundle/')
    Plug 'morhetz/gruvbox'
    call plug#end()
    colorscheme gruvbox
    ```
    
  - `:PlugInstall`<br>
    vimに入ってinstall
    ```
    [Plugins]  ~/.vimrc
    Updated. Elapsed time: 0.043074 sec.
    - Finishing ... Done!
    - gruvbox: Already installed
    ```
    終わったらqで抜ける

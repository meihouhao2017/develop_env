"模板补全插件
"默认情况下，UltiSnips 模板补全快捷键是 <tab>，与后面介绍的 YCM 快捷键有冲突，所有须在 .vimrc 中重新设定：
"但是我ycm的已经修改了。
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

"使用自定义的snippets
" let g:UltiSnipsSnippetDirectories=["~/.vim/bundle/ultisnips/mysnippets/cpp.snippets"]

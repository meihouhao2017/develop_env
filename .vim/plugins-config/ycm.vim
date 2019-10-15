" ==================== YCM配置 ====================
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu	

"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	

"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	

"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
let g:ycm_key_list_select_completion=['<c-j>']
" let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion=['<c-k>']
" let g:ycm_key_list_previous_completion = ['<Up>']

"关闭加载.ycm_extra_conf.py提示
let g:ycm_confirm_extra_conf=0 

" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2	
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0	
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1	

"force recomile with syntastic
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	
nnoremap <leader>lo :lopen<CR>	"open locationlist
nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

"跳转到定义处
nnoremap <leader>gt :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR> 
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR> 
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR> 

" 黑名单,不启用
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'gitcommit' : 1,
      \}


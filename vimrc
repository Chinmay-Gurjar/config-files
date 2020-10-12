" for line numbering
set number 

" enable syntax switching
syntax on

" enable auto-indetation
set autoindent

" to enable filetype plugins
filetype plugin on

" this enables pydiction
" let g:pydiction_location = '/home/gilfoyle/.vim/lang_plug/complete-dict'

let g:pydiction_menu_height = 3

" maps NERDTree to f2
map <F2> :NERDTreeToggle<CR>

" to enable JS auto-complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" vim-plug config
call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	let g:coc_global_extensions = [
	  \ 'coc-tsserver'
	  \ ]
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'peitalin/vim-jsx-typescript'
	Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
	Plug 'eslint/eslint'
call plug#end()

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

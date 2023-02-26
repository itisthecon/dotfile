set cursorline
set mouse=
set showmatch
set formatoptions+=mM
set autoindent        "always set autoindenting on
set smartindent       "set smart indent
set smarttab          "use tabs at the start of a line, spaces elsewhere
set tabstop=4
set shiftwidth=4
set softtabstop=4 "敲入tab键时实际占有的列数。softtabstop大于tabstop时多出的部分会用空格填充,小于的时候会变成softtabstop个空格
set expandtab
"set noexpandtab

set noshowmode
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936
set fileencoding=utf-8

inoremap jk <ESC>

" remember cursor position when reopening files
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

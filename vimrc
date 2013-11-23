let mapleader = ","
imap <C-f> <ESC>
vmap <C-f> <ESC>
nmap <C-f> <ESC>
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
map ; :
map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr>
map <silent> <leader>. ,be
map <silent> <leader>rd :edit<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-s> :wa<cr>
map <Tab> `
map ' "
"cmap w!! w !sudo dd of=%<cr>

let g:NERDTree_title="NERD Tree"
let g:winManagerWindowLayout='NERDTree|TagList'
function! NERDTree_Start()
	exec 'NERDTree'
endfunction
function! NERDTree_IsValid()
	return 1
endfunction
"let g:winManagerWindowLayout='FileExplorer'
map nrt :NERDTreeToggle<cr> 
map nrx :NERDTree 
"map wm :WMToggle<cr> 
map <silent> <leader>res :!(cd ~/git-repo/hd-art/Resources/; sh genfilelist.sh)<cr>
map <silent> <leader>si :!~/git-repo/hd-prg/client/start_ios_sim.sh<cr><cr>

colorscheme torte
syntax on    
"winpos 80 80
set autoread
set number  
set cursorline
set shiftwidth=4 
set softtabstop=4 
set tabstop=4    
set nobackup    
set hlsearch
set noswapfile
set statusline=%m\ %F\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
filetype plugin indent on  

nmap <leader>vg ;vimgrep //gj **/*.lua
nmap <silent> <leader>fd :call Search_Word()<CR>:copen<CR>
function! Search_Word()
	let w =	expand("<cword>")
	let r =	substitute(w, '^ \(.\{-}\) $', '\1', '')
"	execute "echo 'a".r."b'"
	execute "vimgrep /".r."/gj **/*.lua"
endfunction

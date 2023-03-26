" Settings
set tabstop=4
set shiftwidth=4
set encoding=UTF-8
set number " line number
syntax on
set splitbelow " when split horizontally, the split is below

call plug#begin('~/.vim/plugged')
	" # NERDTree sidebar
	Plug 'preservim/nerdtree'
	let g:NERDTreeDirArrowExpandable = '▸' "better arrows
	let g:NERDTreeDirArrowCollapsible = '▾'


	" # Code completion with coc vim completion plug
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
	
	" Language Packs
	let g:coc_global_extensions = [
		\ 'coc-tsserver',
		\ 'coc-json',
		\ 'coc-css',
		\  'coc-eslint',
		\  'coc-prettier'
	\ ]

	" Configure more in .vim/coc-settings.json


	" # Status Bar (at bottom)
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons' " icons in status line
	" Plug 'vim-airline/vim-airline' " alternative status bar at bottom

	" # Color Scheme
	Plug 'sheerun/vim-polyglot' " syntax highlighting for many languages
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
	colorscheme spaceduck

	let g:airline_theme = 'spaceduck'

	" HTML
	Plug 'docunext/closetag.vim'
	let g:closetag_xhtml_filenames='*.jsx,*.tsx'
	Plug 'mattn/emmet-vim'
	" let g:user_emmet_leader_key=','


call plug#end()


" # Keybindings

" ## NERDTree
noremap <C-b> :NERDTreeToggle<Enter>


" ## coc-vim
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gr <Plug>(coc-references)

"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

"nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

"nmap <leader>do <Plug>(coc-codeaction)

"nmap <leader>rn <Plug>(coc-rename)


" ## Editor
noremap <C-s> :w<CR>
noremap <C-q> ZZ
vnoremap <C-c> "+y
noremap <C-j> :sp \| term<CR>i
inoremap <C-j> <ESC>:sp \| term<CR>i
	"exit a terminal on escape
tmap <Esc> <C-\><C-n>
tmap <C-j> <Esc>:q<CR>
	"turn off terminal 

" ## Vim
imap <C-d> <Esc>lxi
	"go back one
imap <C-e> <Esc>$a
nmap <C-e> $
imap <C-k> <Esc>ld$a
nmap <C-k> ld$
nnoremap g<down> :m .+1<CR>==
	"move a line
nnoremap g<up> :m .-2<CR>==
	"move a line down




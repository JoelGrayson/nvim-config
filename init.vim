" Settings set tabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set encoding=UTF-8
set number " line number
syntax on
set splitbelow " when split horizontally, the split is below
let mapleader=" " " <Space> is <Leader>

call plug#begin('~/.config/nvim/plugged')
	" # GUI
	" ## NERDTree sidebar
	Plug 'preservim/nerdtree'
	let g:NERDTreeDirArrowExpandable='▸' "better arrows
	let g:NERDTreeDirArrowCollapsible='▾'


	" ## Tmux navigation
	Plug 'christoomey/vim-tmux-navigator'
	vmap ++ <plug>NERDCommenterToggle
	nmap ++ <plug>NERDCommenterToggle

	
	" ## Find files and search in project
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }


	" ## Status Bar (at bottom)
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons' " icons in status line
	Plug 'vim-airline/vim-airline' " alternative status bar at bottom
	let g:airline_powerline_fonts=1

	" ## Tab Bar (for buffers)
	Plug 'romgrk/barbar.nvim'




	
	" # Editing
	" ## Code Completion
	" ### conquerer of completion (intellisense)
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
	" Language packs
	let g:coc_global_extensions=[
		\ 'coc-snippets',
		\ 'coc-pairs',
		\ 'coc-tsserver',
		\ 'coc-eslint', 
		\ 'coc-prettier', 
		\ 'coc-json', 
		\ 'coc-css'
	\ ]
	if has('nvim')
		inoremap <silent><expr> <C-space> coc#refresh()
	endif
	" <CR> accepts selected completion item or notify coc.nvim to format
	inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
	      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
	inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm()
	      \: "\<C-g>u\<Tab>\<c-r>=coc#on_enter()\<CR>"

	" Snippets are configured in the snippets folder. CocList snippets shows all available snippets

	" ## Commenting Out
	Plug 'preservim/nerdcommenter'
	let g:NERDCreateDefaultMappings=1

	
	" ## GitHub gutter on the left
	Plug 'airblade/vim-gitgutter'
	let g:NERDSpaceDelims=1


	" ## Multi-Cursor Editing
	Plug 'mg979/vim-visual-multi', { 'branch': 'master' }


	" # ds(, cs(
	Plug 'tpope/vim-surround'
	
	
	" ## HTML Emmet Tags
	Plug 'docunext/closetag.vim'
	let g:closetag_xhtml_filenames='*.jsx,*.tsx'
	Plug 'mattn/emmet-vim'
	" let g:user_emmet_leader_key=','


	" # Styling
	" ## Color Scheme
	Plug 'sheerun/vim-polyglot' " syntax highlighting for many languages
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
	colorscheme spaceduck
	let g:airline_theme='spaceduck'


	" ## Nerd Font (Icons)
	" Note: must be called after other plugins
	Plug 'ryanoasis/vim-devicons'
	set guifont=FiraCode:h12 " <font_name>:h<font_size>

call plug#end()


" # Keybindings
" Note: iterm has key bindings for ⌘ keys

" ## NERDTree
noremap <C-n> :NERDTreeToggle<Enter>j
inoremap < <<Esc>a

" ## Telescope (find files)
nnoremap <C-p> <cmd>Telescope find_files<cr>
map <leader>ff <C-p>

nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" ## Editor
" Exiting
noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
noremap <C-q> ZZ
noremap <Leader>q ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
	" exit all

" Copy to OS clipboard
vnoremap <C-c> "+y

" " Open Terminal
" nnoremap <C-j> :sp \| term<CR>i

" Clear in Terminal
tmap <C-k> clear<CR>

" Exit terminal
tmap <Esc> <C-\><C-n>
tmap <C-d> <Esc>:q<CR>

" Github Desktop
noremap <C-g> <Cmd>!github .<CR><CR>

" ## Vim
imap <C-d> <Esc>lxi
	"go back one
" Go to start
imap <C-a> <Esc>^i
nmap <C-a> ^
" Go to end
imap <C-e> <Esc>$a
nmap <C-e> $
" Delete to end
imap <C-k> <Esc>ld$a
nmap <C-k> ld$
nnoremap g<down> :m .+1<CR>==
	"move a line
nnoremap g<up> :m .-2<CR>==
	"move a line down
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>
" Select All
nmap <Leader>a gg0vG
" Insert like emacs
imap <C-f> <Esc>la
imap <C-b> <Esc>i



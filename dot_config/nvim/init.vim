" -------------------------------------------------------
" GENERAL SETTINGS
" -------------------------------------------------------
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set noswapfile              " disable creating swap file
set backupdir=~/.cache/vim  " Directory to store backup files.

" -------------------------------------------------------
" PLUGS
" -------------------------------------------------------
call plug#begin(stdpath('data') . '/plugged')
 source ~/.config/nvim/plugs/coc.vim
 source ~/.config/nvim/plugs/barbar.vim
 source ~/.config/nvim/plugs/dashboard-nvim.vim
 source ~/.config/nvim/plugs/dracula.vim
 source ~/.config/nvim/plugs/lspconfig.vim
 source ~/.config/nvim/plugs/lspsaga.vim
 source ~/.config/nvim/plugs/lualine.vim
 source ~/.config/nvim/plugs/neoscroll.vim
 source ~/.config/nvim/plugs/neo-tree.vim
 source ~/.config/nvim/plugs/nvim-web-devicons.vim
 source ~/.config/nvim/plugs/nvim-lsp-installer.vim
 source ~/.config/nvim/plugs/plenary.vim
 source ~/.config/nvim/plugs/popup.vim
 source ~/.config/nvim/plugs/telescope.vim
 source ~/.config/nvim/plugs/vim-devicons.vim
 source ~/.config/nvim/plugs/vim-fugitive.vim
 source ~/.config/nvim/plugs/vim-javascript.vim
 source ~/.config/nvim/plugs/vim-snippets.vim
 source ~/.config/nvim/plugs/dash.vim  
 source ~/.config/nvim/plugs/nvim-treesitter.vim
 source ~/.config/nvim/plugs/null-ls.vim
 source ~/.config/nvim/plugs/gitsigns.vim
 source ~/.config/nvim/plugs/toggleterm.vim
 Plug 'MunifTanjim/nui.nvim'
 Plug 'edluffy/specs.nvim'
 Plug 'windwp/nvim-autopairs'
call plug#end()

" -------------------------------------------------------
" COLOR SETTINGS
" -------------------------------------------------------
 if (has("termguicolors"))
 	set termguicolors
 endif
 
syntax enable
colorscheme dracula

" -------------------------------------------------------
" KEYBINDINGS
" -------------------------------------------------------
nnoremap <C-q> :quit!<CR>
" nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <leader>` :ToggleTerm direction=float<CR>

" Find files using Telescope command-line sugar."
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" -------------------------------------------------------
" LUA SETTINGS
" -------------------------------------------------------
lua require('init')

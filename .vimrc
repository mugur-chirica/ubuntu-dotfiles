set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-commentary' " comment sytax aware
Plugin 'scrooloose/syntastic' " sintax highlighting
Plugin 'scrooloose/nerdtree' " show filetree
" Plugin 'bling/vim-airline' " inproved vim information line
Plugin 'kien/ctrlp.vim' "fuzzy searching
Plugin 'mattn/emmet-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise' " auto add matching end keywords
Plugin 'mhinz/vim-signify' " column diff for source control
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mbbill/undotree'
Plugin 'gioele/vim-autoswap' " buffer and swapfile manager
Plugin 'sickill/vim-pasta' " content aware paste and indent
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jebaum/vim-tmuxify'
Plugin 'vim-scripts/php.vim-html-enhanced'
" Plugin 'vim-scripts/matchit.zip' " improve % functionality
" Plugin 'yegappan/mru' " most recent used files tree
" Plugin 'ntpeters/vim-better-whitespace'
" Plugin 'szw/vim-g' " search google from vim
" Plugin 'gabebw/vim-spec-runner'
" Plugin 'nathanaelkane/vim-indent-guides' " show indentation guides with \ig
" Plugin 'Valloric/YouCompleteMe' " autocomplete (needs python compiled)
" Plugin 'tpope/vim-obsession' " vim session management
" Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
" Plugin 'Raimondi/delimitMate' " add matching quotes, brackets etc
"
" Plugin 'plasticboy/vim-markdown'
" Plugin 'dyng/ctrlsf.vim' " search inside files using ag
" Plugin 'godlygeek/tabular'
" Plugin 'drmingdrmer/xptemplate' " snippet plugin
" Plugin 'tpope/vim-bundler'
" Plugin 'xolox/vim-misc' " ?
" Plugin 'vim-scripts/snipMate'
" Plugin 'rking/ag.vim'
" Plugin 'easymotion/vim-easymotion'
" Plugin 'takac/vim-hardtime'
" Plugin 'xolox/vim-session' " good session manager, using obsession for tmux

" colorschemes
Plugin 'blueshirts/Darcula' " preffered theme for console
" Plugin 'cdmedia/itg_flat_vim'
" Plugin 'kreeger/benlight'
" Plugin 'budmc29/colour-schemes'
" Plugin 'croaker/mustang-vim'
" Plugin 'wesgibbs/vim-irblack'
" Plugin 'chriskempson/base16-vim'
" Plugin 'sjl/badwolf'
" Plugin 'sickill/vim-monokai'
" Plugin 'zeis/vim-kolor'
" Plugin 'morhetz/gruvbox'
" Plugin 'romainl/Apprentice'
" Plugin 'jpo/vim-railscasts-theme'
" Plugin 'gregsexton/Muon'
" Plugin 'carlson-erik/wolfpack'
" Plugin 'andrwb/vim-lapis256'
" Plugin 'wellsjo/wellsokai.vim'
" Plugin 'atelierbram/vim-colors_atelier-schemes'
" Plugin 'glortho/feral-vim'
" Plugin 'queyenth/oxeded.vim'
" Plugin 'fabi1cazenave/kalahari.vim'
" Plugin 'Wutzara/vim-materialtheme'
" Plugin 'jlesquembre/peaksea'
" Plugin 'scheakur/vim-scheakur'
" Plugin 'orthecreedence/void.vim'
" Plugin 'jlund3/colorschemer'
" Plugin 'blackgate/tropikos-vim-theme'
" Plugin 'MPiccinato/wombat256'
" Plugin 'thomd/vim-wasabi-colorscheme'
" Plugin 'zsoltf/vim-maui'
" Plugin 'xero/sourcerer.vim'
" Plugin 'gilgigilgil/anderson.vim'
" Plugin 'DrSpatula/vim-buddy'
" Plugin 'vim-scripts/moria'
" Plugin 'Donearm/Ubaryd'
" Plugin 'mkarmona/colorsbox'

call vundle#end()            " required
filetype plugin indent on    " required

" colorscheme base16-tomorrow
set background=dark
" colorscheme benlight
colorscheme darcula " default theme for console

" don't show the gui
set guioptions-=m
set guioptions-=T
set guioptions-=r

set t_ut= "fix tmux transparent background problem
set ttimeoutlen=50 " reduce needed time to enter/exit insert mode

set nocompatible
set hidden "auto hide modified buffers when swithcing to another buffer
set expandtab
set tabstop=2
set shiftwidth=2 "set tabwith to 2 spaces, for ruby
set linebreak "don't split word when doing soft break
set smarttab
set history=10000 "history line to remember
set autoread "refresh file when is modified somewhere else
set ignorecase "ignore case when searching
set incsearch " start search as soon as you type
set hlsearch "highlight search results
set cindent "better indenting with vim
set guifont=Source\ Code\ Pro\ 22 " font and line-height
set linespace=6

set number
set relativenumber
set autoindent
set copyindent
set smartcase
set foldmethod=syntax
set foldnestmax=2
set nofoldenable
set foldlevel=1

filetype on
filetype plugin on
filetype indent on
syntax on

runtime macros/matchit.vim

" change shortcut to ctrlt for ease
let g:ctrlp_map = '<c-t>'
" save cache for ctrlp plugin, remember to create the dir on new systems
let g:ctrlp_cache_dir = $HOME . '/.vim/ctrlp-cache'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


" vim persisten undo
set undofile
" set a directory to store the undo history
set undodir=~/.vim/undo
set undolevels=10000

" change swap file directory
set dir=$HOME/.vim/swap/


" Hardtime plugin
" let g:hardtime_default_on = 1

" xolo vim session settings
let g:session_autosave_periodic = 5
" let g:session_autosave = 'yes'

" markdown preview plugin map
let vim_markdown_preview_hotkey='<C-m>'

" snippets
let g:UltiSnipsExpandTrigger="<Ctrl>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

"open tmux from vim
let g:tmuxify_custom_command = 'tmux split-window -p 30'

" use markdown in vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki','syntax': 'markdown', 'ext': '.md'}] 

" airline settings
set laststatus=2 " always show
set noshowmode " don't show the default mode indicator
let g:airline#extensions#eclim#enables = 0 " disable number of hard limit overflowed characters
let g:airline#extensions#tabline#fnamemod = ':t' " show the file name in the line, not the full path

" allow mouse scroll in console vim
set mouse=a

" highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" show mode in status bar
if version >= 700
hi StatusLine term=reverse ctermfg=7 ctermbg=237 gui=undercurl
au InsertEnter * hi StatusLine term=reverse ctermfg=7 ctermbg=24 gui=undercurl guisp=Magenta
au InsertLeave * hi StatusLine term=reverse ctermfg=7 ctermbg=237
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""" key remapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
map <F2> <ESC>;NERDTreeToggle ~/work<RETURN>
map <F3> <ESC>;UndotreeToggle <bar> UndotreeFocus<RETURN>
map <silent> <leader>/ ;nohlsearch<CR>
" open file that needed root with root
cmap w!! w !sudo tee % >/dev/null
map <leader>t ;CtrlPTag<cr>


" reload vimrc
map <leader>sr <ESC>;source $MYVIMRC<RETURN><ESC>;echoerr 'vimrc reloaded'<RETURN>

" window management
map <leader>v <C-w>_
map <leader>h <C-w><bar>
map <leader>r <C-w>=
map <leader>b <C-w>_ <C-w><bar>

nnoremap ; :
nnoremap : ;
" inoremap <C-e> <C-o>A
map <Alt-s> <ESC>;w<RETURN>
" map <leader>sb <ESC>;! grep -rnw './work/yoyo_bootstrap' -e "
" map <leader>sm <ESC>;! grep -rnw './work/gasbox-marketplace' -e "
" map <leader>sp <ESC>;! grep -rnw './work/gasbox-player' -e "
" map <leader>sa <ESC>;! grep -rnw './work/yoyo-account' -e "
" map <leader>ss <ESC>;! grep -rnw './work/' -e "
" map <leader>sa <ESC>;! grep -rnw './' -e "
" map \"+Gp \"+gp
" map ;w <ESC>;w<RETURN>
" map ;q <ESC>;wq<RETURN>

" yank to machine register
map <leader>y "+y<ESC>;echoerr 'copy to clipboard'<RETURN>
" paste from machine register
map <leader>p <ESC>"+gp<ESC>;echoerr 'pasted from clipboard'<RETURN>
map <leader>P <ESC>"+gP<ESC>;echoerr 'pasted from clipboard'<RETURN>

nnoremap \cd :lcd %:p:h<CR>:pwd<CR>

" google search with plugin
map <leader>g <ESC>;Google

" vim wiki maping
map <leader>wn <ESC>;e ~/vimwiki/Notes.md <RETURN>
map <leader>wg <ESC>;e ~/vimwiki/Git.md <RETURN>

map <leader>wsc <ESC>;e ~/vimwiki/Scratchpad.md <RETURN>
map <leader>wnl <ESC>;e ~/vimwiki/Linux\ server.md <RETURN>
map <leader>wns <ESC>;e ~/vimwiki/Shell.md <RETURN>
map <leader>wnv <ESC>;e ~/vimwiki/Vim.md <RETURN>
map <leader>wnt <ESC>;e ~/vimwiki/Tmux.md <RETURN>
map <leader>wnm <ESC>;e ~/vimwiki/Mercurial.md <RETURN>

" vim tmuxify commands
le g:tmuxify_run = {
      \ 'rb': 'bundle exec rspec spec %',
      \}

" vim emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" ctrl shift f searcher
" map <leader>f <ESC>;CtrlSF

" this needs to be there for the color column  to work
highlight ColorColumn ctermbg=1 guibg=red
call matchadd('ColorColumn', '\%80v', 100)

augroup VIMRC
  autocmd!
  autocmd bufwritepost .vimrc source $MYVIMRC
augroup end

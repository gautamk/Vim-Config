syntax on
set ruler
set nocompatible
set hidden
colorscheme desert
set tabstop=3
set shiftwidth=3
set guifont=Courier

"Show line numbers 
set number
set smartindent
set autoindent
set linespace=3
set wildmode=list:longest
set foldenable
set hlsearch

"Open th current buffer in google chrome
abbrev gc :! google-chrome %:p<cr>


"Open the current buffer in firefox
abbrev ff :! firefox %:p<cr>

"Map escape to ,e
imap ,e <esc>

"Map code autocompletion to ,<tab>
imap ,<tab> <C-x><C-o>

"Shortcut for NERDTreeToggle
nmap ,ntt :NERDTreeToggle

"Let NerdTree show Hidden Files
let NERDTreeShowHidden=1
set cursorline  				" highlight current line

if has('cmdline_info')
  set ruler                  	" show the ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
  set showcmd                	" show partial commands in status line and
" selected characters/lines in visual mode
endif
	" NerdTree {	
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1

" Source the vimrc file after saving it. This way, you don't have to reload
" Vim to see the changes.
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
"
"Auto completion
filetype plugin on
set ofu=syntaxcomplete#Complete

" My personalized vimrc file.
"
" Maintainer:	Ali Mirjamali <ali.mirjamali@gmail.com>
" Last change: March 2024
"
" -----------------------------------------------------------
" Copyright 2024 by Ali Mirjamali under Vim standard license
" -----------------------------------------------------------
"
" This is an extension of the default vimrc example file.
" My tweaks are added right at the bottom.
" 
" In memory of Bram Moolenaar:
" -----------------------------------------------------------
"
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2011 Apr 15
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc


unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set nowrap				" No word wrapping by default.
set termbidi				" Bidirectional text support
set colorcolumn=80,132			" Red color column 80 & 132
set textwidth=132			" Automatically break lines at 132 column
set showmatch				" Highlights matching brackets on cursor hover
highlight ColorColumn ctermbg=darkgrey guibg=darkslategrey
set list lcs=tab:\ \ \¦

" My initial simplistic coloring scheme. This will be changed in the future.
" highlight Normal ctermfg=Grey ctermbg=DarkBlue
" autocmd InsertEnter * highlight Normal ctermbg=Black
" autocmd InsertLeave * highlight Normal ctermbg=DarkBlue

" Mapping F8 to automatic spell checking
nmap <F8> :setlocal spell! spelllang=en_us<CR>
imap <F8> <C-O>:setlocal spell! spelllang=en_us<CR>

" Paste mode toggle with F2 to disable auto-indent and auto-completion
set pastetoggle=<F2>

" Auto complete for ( , " , ' , [ , { 
" function AutoComplete()
" 	inoremap <buffer>	(  ()<Left>
" 	inoremap <buffer>       "  ""<Left>
" 	inoremap <buffer>       `  ``<Left>
" 	inoremap <buffer>       '  ''<Left>
" 	inoremap <buffer>       [  []<Left>
" 	inoremap <buffer>	{  {}<Left>
" endfunction

" Automatic script execution on F5 key
function RunFromVim()
	noremap <buffer> <F5> :!./%<CR>
endfunction

" Configuring Vim for Programming
augroup programming
	au!
	autocmd FileType c,cpp,java,javascript,python,ruby call AutoComplete()
	autocmd FileType ruby,sh,python call RunFromVim()
augroup END


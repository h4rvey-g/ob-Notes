" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk
vmap j gj
vmap k gk
imap jj <Esc>
" I like using H and L for beginning/end of line
" nmap H ^
" nmap L $
" Quickly remove search highlights
nmap <F9> :nohl

" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
unmap <Space>
exmap back obcommand app:go-back
nmap <Space><Space>h :back
exmap forward obcommand app:go-forward
nmap <Space><Space>l :forward
" exmap preview obcommand markdown:toggle-preview
" nmap <Space>p :preview
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_backticks surround ` `
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }
exmap mnemonic surround <mark\ style="background:\ #62603c;"><font\ color="#a5deff"> </font></mark>

" NOTE: must use 'map' and not 'nmap'
map sl :surround_wiki
nunmap s
vunmap s
map s" :surround_double_quotes
map s' :surround_single_quotes
map s` :surround_backticks
map sb :surround_brackets
map s( :surround_brackets
map s) :surround_brackets
map s[ :surround_square_brackets
map s[ :surround_square_brackets
map s{ :surround_curly_brackets
map s} :surround_curly_brackets
vunmap H
" vunmap R
map sr :mnemonic
" examp highlightr-plugin
exmap Red obcommand highlightr-plugin:Red
" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nunmap _
nmap _ I-<Space><Esc>
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall

exmap foldall obcommand editor:fold-all
nmap zM :foldall

" Emulate Tab Switching https://vimhelp.org/tabpage.txt.html#gt
" requires Cycle Through Panes Plugins https://obsidian.md/plugins?id=cycle-through-panes
exmap tabnext obcommand cycle-through-panes:cycle-through-panes
nmap gt :tabnext
exmap tabprev obcommand cycle-through-panes:cycle-through-panes-reverse
nmap gT :tabprev
" Maps pasteinto to Alt-p
map <A-p> :pasteinto
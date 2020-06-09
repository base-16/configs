set number
set mouse=a
set autoindent
set tabstop=4
set cursorline
set wrap!
set guioptions+=b
highlight SpecialKey guifg = #000000
highlight ErrorMsg guibg = #FF0000
highlight Search guibg = #F3FF0F
highlight LineNr guifg = #000000
highlight CursorLineNr guifg = #000000
highlight Visual guibg = #ADD6FF
highlight WarningMsg guifg = #FF0000
highlight CursorLine guibg = #E9EFF8
highlight MatchParen guibg = #F3FF0F
highlight Comment guifg = #808080
highlight Constant guifg = #0D98BA
highlight Special term = bold gui = bold guifg = #6A5ACD
highlight PreProc guifg = #008000
highlight Type term = NONE gui = NONE guifg = #0000E6
highlight Error term = bold gui = bold guibg = #FF0000
highlight String guifg = #944900
highlight Character guifg = #CE7B00
highlight Number guifg = #0D98BA
highlight Boolean guifg = #0D98BA
highlight Float guifg = #0D98BA
highlight Operator gui = bold guifg = #FFA500
highlight Include guifg = #008000
highlight Define guifg = #008000
highlight cIncluded guifg = #8000FF
highlight cLabel guifg = #0000E6
highlight cConditional guifg = #A020F0
highlight cRepeat guifg = #A020F0
"set linespace=0
"set list lcs=tab:\|\ 
set list lcs=tab:\¦\ 
"set list lcs=tab:\┊\ 
"set list lcs=tab:\⋮\ 
set clipboard=unnamedplus
set guifont=AndaleMono\ 14
set guicursor=n-v-c-i:blinkon0-hor10-Cursor
hi Comment guifg=gray
noremap <S-Up> v<Up>
noremap <S-Down> v<Down>
noremap <S-Left> v<Left>
noremap <S-Right> v<Right>
vnoremap <S-Up> <Up>
vnoremap <S-Down> <Down>
vnoremap <S-Left> <Backspace>
vnoremap <S-Right> <Space>
inoremap <S-Up> <Esc>v<Up>
inoremap <S-Down> <Esc>v<Down>
inoremap <S-Left> <Esc>v<Left>
inoremap <S-Right> <Esc>v<Right>
inoremap <S-Home> <Esc>v<Left><Home>
inoremap <S-End> <Esc>v<Right><End><Left>
inoremap ' ''<Left>
inoremap " ""<Left>
"inoremap < <><Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
vnoremap <C-c> yi
inoremap <C-v> <Esc>p<S-a>
vnoremap <C-x> di
inoremap <C-f> <Esc>/
inoremap <C-z> <Esc>ui
inoremap <C-t> <Esc>:tabe<Enter>i
inoremap <C-w> <Esc>:tabclose!<Enter>i
inoremap <C-Tab> <Esc>:tabnext<Enter>i
inoremap <C-S-Tab> <Esc>:tabprevious<Enter>i
inoremap <C-o> <Esc>:browse tabnew<Enter>i
inoremap <C-s> <Esc>:w<Enter>i<Right>
inoremap <C-q> <Esc>:q!<Enter>
inoremap de<Space>< de<Space><><Left>
inoremap {<Enter> {}<Left><Enter><Enter><Up><Tab>
inoremap <C-a> <Esc><S-g>v<S-Left>gg
vnoremap <C-a> <Esc><S-g>v<S-Left>gg
vnoremap <Del> <Del>i
vnoremap <Backspace> <Del>i
vnoremap " <Del>i"
vnoremap 1 <Del>i1
vnoremap 2 <Del>i2
vnoremap 3 <Del>i3
vnoremap 4 <Del>i4
vnoremap 5 <Del>i5
vnoremap 6 <Del>i6
vnoremap 7 <Del>i7
vnoremap 8 <Del>i8
vnoremap 9 <Del>i9
vnoremap 0 <Del>i0
vnoremap * <Del>i*
vnoremap - <Del>i-
vnoremap q <Del>iq
vnoremap w <Del>iw
vnoremap e <Del>ie
vnoremap r <Del>ir
vnoremap t <Del>it
vnoremap y <Del>iy
vnoremap u <Del>iu
vnoremap ı <Del>iı
vnoremap o <Del>io
vnoremap p <Del>ip
vnoremap ğ <Del>iğ
vnoremap ü <Del>iü
vnoremap a <Del>ia
vnoremap s <Del>is
vnoremap d <Del>id
vnoremap f <Del>if
vnoremap g <Del>ig
vnoremap h <Del>ih
vnoremap j <Del>ij
vnoremap k <Del>ik
vnoremap l <Del>il
vnoremap ş <Del>iş
vnoremap i <Del>ii
vnoremap , <Del>i,
vnoremap < <Del>i<
vnoremap z <Del>iz
vnoremap x <Del>ix
vnoremap c <Del>ic
vnoremap v <Del>iv
vnoremap b <Del>ib
vnoremap n <Del>in
vnoremap m <Del>im
vnoremap ö <Del>iö
vnoremap ç <Del>iç
vnoremap . <Del>i.
vnoremap Q <Del>iQ
vnoremap W <Del>iW
vnoremap E <Del>iE
vnoremap R <Del>iR
vnoremap T <Del>iT
vnoremap Y <Del>iY
vnoremap U <Del>iU
vnoremap I <Del>iI
vnoremap O <Del>iO
vnoremap P <Del>iP
vnoremap Ğ <Del>iĞ
vnoremap Ü <Del>iÜ
vnoremap A <Del>iA
vnoremap S <Del>iS
vnoremap D <Del>iD
vnoremap F <Del>iF
vnoremap G <Del>iG
vnoremap H <Del>iH
vnoremap J <Del>iJ
vnoremap K <Del>iK
vnoremap L <Del>iL
vnoremap Ş <Del>iŞ
vnoremap İ <Del>iİ
vnoremap ; <Del>i;
vnoremap > <Del>i>
vnoremap Z <Del>iZ
vnoremap X <Del>iX
vnoremap C <Del>iC
vnoremap V <Del>iV
vnoremap B <Del>iB
vnoremap N <Del>iN
vnoremap M <Del>iM
vnoremap Ö <Del>iÖ
vnoremap Ç <Del>iÇ
vnoremap : <Del>i:
vnoremap é <Del>ié
vnoremap ! <Del>i!
vnoremap ' <Del>i'
vnoremap ^ <Del>i^
vnoremap + <Del>i+
vnoremap % <Del>i%
vnoremap & <Del>i&
vnoremap / <Del>i/
vnoremap ( <Del>i(
vnoremap ) <Del>i)
vnoremap = <Del>i=
vnoremap ? <Del>i?
vnoremap _ <Del>i_
vnoremap £ <Del>i£
vnoremap # <Del>i#
vnoremap $ <Del>i$
vnoremap ½ <Del>i½
vnoremap ¾ <Del>i¾
vnoremap { <Del>i{
vnoremap [ <Del>i[
vnoremap ] <Del>i]
vnoremap } <Del>i}
vnoremap \ <Del>i\
"vnoremap | <Del>i|
vnoremap @ <Del>i@
vnoremap € <Del>i€
vnoremap ¶ <Del>i¶
vnoremap ™ <Del>i™
vnoremap ← <Del>i←
vnoremap û <Del>iû
vnoremap î <Del>iî
vnoremap ô <Del>iô
vnoremap ¨ <Del>i¨
vnoremap ~ <Del>i~
vnoremap â <Del>iâ
vnoremap § <Del>i§
vnoremap ª <Del>iª
vnoremap ´ <Del>i´
vnoremap ` <Del>i`
vnoremap « <Del>i«
vnoremap » <Del>i»
vnoremap ¢ <Del>i¢
vnoremap “ <Del>i“
vnoremap ” <Del>i”
vnoremap µ <Del>iµ
vnoremap × <Del>i×
vnoremap · <Del>i·
vnoremap ˙ <Del>i˙
vnoremap Û <Del>iÛ
vnoremap Î <Del>iÎ
vnoremap Ô <Del>iÔ
vnoremap Â <Del>iÂ
vnoremap <Space> <Del>i<Space>
vnoremap <Esc> <Esc>i
startinsert

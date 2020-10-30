" Turn on syntax highlighting.
syntax on


" Enable mouse support. Юзать мышь - моветон но ей можно удобно
" ресайзить заспличенные окна
set mouse+=a


" Show line numbers.
set number


" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber



" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.


" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=


"определяет ширину 1ой Tab'уляции в 4 пробела
set tabstop=4


"определяет ширину Tab'уляции в 4 пробела, при сдвиге выделенного вертикального блока вправо
set shiftwidth=4


"копирует отступы с текущей строки и добавляет их при добавлении новой
set autoindent


"c indent = копирует отступы с текущей строки и добавляет их при добавлении новой для *.c файлов
set cindent


"добавляет ) после написания символа (
inoremap ( ()<left>
inoremap () ()


"добавляет } после написания символа {
inoremap { {}<Left><enter><up><end>
inoremap {} {}<Left>


"добавляет " после написания символа "
inoremap " ""<left>
inoremap "" ""


"добавляет ' после написания символа '
inoremap ' ''<left>
inoremap '' ''


inoremap [ []<left>
inoremap [] []


"подсвечивает синим строку, если та будет превышать 80 знаков
highlight MoreThan80 ctermbg=blue guibg=blue
:2match MoreThan80 /\%81v.\+/


" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor
" down one entire line. with line wrapping on, this can cause the cursor
" to actually skip a few lines on the screen because it's moving from
" line N to line N+1 in the file. I want this to act more visually
" I want `down' to mean the next line on the screen
nmap j gj
nmap k gk


" Map ctrl-movement keys to window switching
"позволяет удобно прыгать по окнам через контрол (который у нас капс)
" контрол+клавиша движений
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

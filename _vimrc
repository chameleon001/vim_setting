"========= default variables setting =========
set cindent
set bg=dark
set ruler		" 화면 우측 하단에 현재 커서의 위치(줄,칸)를 보여준다.
set number		" 줄	
set modifiable
set hlsearch	" Highlight Search
set ts=4		" tab stop - tab 크기
set sw=4		" shift width - shift 크기 조절
set sts=4		" soft tab stop - tab 이동 크기
set incsearch
set ignorecase
set printoptions=portrait:n,wrap:n,duplex:off
set ai                    " auto indent
set ignorecase      " 검색시 대소문자 구별하지않음
set cindent            " c style indent
set si                    " smart indent
set expandtab       " tab 대신 띄어쓰기로
set fileencodings=utf-8,euc-kr    " 파일인코딩 형식 지정
set bs=indent,eol,start    " backspace 키 사용 가능
set title               " 제목을 표시
set showmatch    " 매칭되는 괄호를 보여줌
colorscheme torte 
"set nowrap         " 자동 줄바꿈 하지 않음
set nobackup       "백업 파일 안만들기
set wmnu           " tab 자동완성시 가능한 목록을 보여줌
set history=1000    " 명령어에 대한 히스토리를 1000개까지
set nocompatible   " 방향키로 이동가능
highlight Comment term=bold cterm=bold ctermtg=2 
""주석 색깔변경"

 set guifont=Bitstream_Vera_Sans_Mono:h18:cHANGEUL
"폰트"
syntax on


call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'taglist-plus'
plugin 'vim-airline/vim-airline'


"
"plugin 'AutoComplPop'
 call vundle#end()


"========= vundle setting =========
set nocompatible               " be iMproved
filetype off                   " required!

"set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

call vundle#rc()



" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'vim-airline/vim-airline' "상태바간지
"Bundle 'airblade/vim-gitgutter' "코드 변경 내역 한눈에
" vim-scripts repos
"Bundle 'ctrlpvim/ctrlp.vim'
"Bundle 'tpope/vim-fugitive'  깃연결
"


Bundle 'snipMate'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'The-NERD-tree'
Bundle 'taglist.vim'
Bundle 'bufexplorer.zip'
Bundle 'DirDiff.vim'
Bundle 'git://github.com/wesleyche/SrcExpl.git'
"Bundle 'git://github.com/altercation/vim-colors-solarized.git'
Bundle 'AutoComplPop'
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"========= key mapping ==========

map <F2> v]}zf	"코드의 { 부분에서 영역 접기
map <F3> zo		"영역 펼치기
map <F4> :! gcc % -o %<.exe<CR>
map <c-F4> :!%<.exe<CR>

map <F6> :BufExplorer<cr>

map <PageUp> <C-U><C-U>
map <PageDown> <C-D><C-D>

"Vim 내의 창 크기 조절
nmap <s-h> <C-W><
nmap <s-j> <C-W>-
nmap <s-k> <C-W>+
nmap <s-l> <C-W>>

"Vim 내에서 창 간 이동
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j 
nmap <c-k> <c-w>k 
nmap <c-l> <c-w>l 

nmap <c-s> :w<CR>
nmap <c-o> :browse e<CR>


"-----------------------------
"Tag List config
filetype on"vim filetpye on
nmap <F7> :TlistToggle<CR>
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Inc_Winwidth=0
let Tlist_Exit_OnlyWindow=0
"window close=off
let Tlist_Auto_Open=0
let Tlist_Use_Right_Window=1
"-----------------------------"


"-----------------------------"
"Source Explorer config
"// The switch of the Source Explorer 
nmap <F8> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
" let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to Avoid conflicts, the Source Explorer should know what plugins 
" // are using buffers. And you need add their bufname into the list below 
" // according to the command ":buffers!" 
let g:SrcExpl_pluginList = [ 
				\ "__Tag_List__", 
        \ "_NERD_tree_", 
        \ "Source_Explorer" 
     \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" //  create/update a tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

"-----------------------------"

set tags+=/root/kernel/linux-3.8.10/tags


"-----------------------------"
"NERD Tree config
let NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
nmap <F9> :NERDTreeToggle<CR>
"-----------------------------"




"========= switch between file buffers ========
map ,x :bn!<CR>	  " Switch to Next File Buffer
map ,z :bp!<CR>	  " Switch to Previous File Buffer
map ,w :bw<CR>	  " Close Current File Buffer

map ,1 :b!1<CR>	  " Switch to File Buffer #1
map ,2 :b!2<CR>	  " Switch to File Buffer #2
map ,3 :b!3<CR>	  " Switch to File Buffer #3
map ,4 :b!4<CR>	  " Switch to File Buffer #4
map ,5 :b!5<CR>	  " Switch to File Buffer #5
map ,6 :b!6<CR>	  " Switch to File Buffer #6
map ,7 :b!7<CR>	  " Switch to File Buffer #7
map ,8 :b!8<CR>	  " Switch to File Buffer #8
map ,9 :b!9<CR>	  " Switch to File Buffer #9
map ,0 :b!0<CR>	  " Switch to File Buffer #0


"========= ctags setting ========
"Upon vim open a file buffer, CWD is switched to the position of the current
"file
"autocmd BufEnter * silent! lcd %:p:h:gs/ /\\/

"set tags=./tags;/.

if version >= 500

func! Sts()
	let st = expand("<cword>")
	exe "sts ".st
endfunc
nmap ,st :call Sts()<cr>

func! Tj()
	let st = expand("<cword>")
	exe "tj ".st
endfunc
nmap ,tj :call Tj()<cr>

func! Tn()
	exe "tn"
endfunc
nmap ,tn :call Tn()<cr>

func! Tp()
	exe "tp"
endfunc
nmap ,tp :call Tp()<cr>

func! Tr()
	exe "tr"
endfunc
nmap ,tr :call Tr()<cr>

func! Tl()
	exe "tl"
endfunc
nmap ,tl :call Tl()<cr>

endif

"======== cscope setting ========
set csprg=/usr/bin/cscope
set csto=0
set cst

func! Csw()
	exe "cs show"
endfunc
nmap ,csw :call Csw()<cr>

func! Csc()
	let csc = expand("<cword>")
	new
	exe "cs find c ".csc
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,csc :call Csc()<cr>

func! Csd()
	let csd = expand("<cword>")
	new
	exe "cs find d ".csd
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,csd :call Csd()<cr>

func! Cse()
	let cse = expand("<cword>")
	new
	exe "cs find e ".cse
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,cse :call Cse()<cr>

func! Csf()
	let csf = expand("<cword>")
	new
	exe "cs find f ".csf
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,csf :call Csf()<cr>

func! Csg()
	let csg = expand("<cword>")
	new
	exe "cs find g ".csg
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,csg :call Csg()<cr>

func! Csi()
	let csi = expand("<cword>")
	new
	exe "cs find i ".csi
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,csi :call Csi()<cr>

func! Css()
	let css = expand("<cword>")
	new
	exe "cs find s ".css
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,css :call Css()<cr>

func! Cst()
	let cst = expand("<cword>")
	new
	exe "cs find t ".cst
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,cst :call Cst()<cr>


if filereadable("cscope.out")
	set nocsverb
	cs add cscope.out
	set csverb
endif



"====,ma===== man page setting =============
func! Man()
	let sm = expand("<cword>")
	exe "!man -S 2:3:4:5:6:7:8:9:tcl:n:l:p:o ".sm
endfunc
nmap ,ma :call Man()<cr><cr>

"====,mk===== make setting =============
let startdir = getcwd()
func! Make()
	exe "!cd ".startdir
	exe "make"
endfunc
nmap ,mk :call Make()<cr><cr>

"====,h====== hexViewer setting =============
let b:hexViewer = 0
func! Hv()
        if (b:hexViewer == 0)
                let b:hexViewer = 1
                exe "%!xxd"
        else
                let b:hexViewer = 0
                exe "%!xxd -r"
        endif
endfunc
nmap ,h :call Hv()<cr>

"============ file buffer CleanClose =============
func! CleanClose(tosave)
if (a:tosave == 1)
	w!
endif
let todelbufNr = bufnr("%")
let newbufNr = bufnr("#")
if ((newbufNr != -1) && (newbufNr != todelbufNr) && buflisted(newbufNr))
	exe "b".newbufNr
else
	bnext
endif

if (bufnr("%") == todelbufNr)
	new
endif
	exe "bd".todelbufNr
endfunc

nmap ,cf :call CleanClose(0)<cr>

"============ open CWD =============
nmap ,od :e ./<cr>


"============ project specific settings =============
if filereadable(".project.vimrc")
	source .project.vimrc
endif

"========= solarized scheme =======
"syntax enable
"set t_Co=256
"let g:solarized_termcolors=256
"colorscheme jellybeans 
"==================================

"======AutoComplPop =============
function! InsertTabWrapper()
    let col=col('.')-1
    if !col||getline('.')[col-1]!~'\k'
        return "\<TAB>"
    else
        if pumvisible()
            return "\<C-M>"
        else
            return "\<C-N>\<C-P>"
        end
    endif
endfunction

inoremap <TAB> <c-r>=InsertTabWrapper()<cr>

hi Pmenu ctermbg=blue
hi PmenuSel ctermbg=yellow ctermbg=black
hi PmenuSbar ctermbg=blue
"==================================

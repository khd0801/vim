"-----------------------------------------------------------------------"
" Vundle 환경설정
"------------------------------------------------------------------------"
set nocompatible               " Vim Using
filetype off                   " required!
set shell=/bin/bash
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	" let Vundle manage Vundle
	" required! 
	Plugin 'VundleVim/Vundle.vim'

    " vim 화면을 좀 더 예쁘게 구성해주는 플러그인 
	Plugin 'vim-airline/vim-airline' 
	Plugin 'vim-airline/vim-airline-themes'
    
    "파일 및 폴더 탐색시 사용합니다
    Plugin 'ctrlp.vim' 

    "Gblame 사용 가능하게 함.
    Plugin 'tommcdo/vim-fugitive-blame-ext' 

    " 함수나 구조체 클래스 변수 선언들을 참조하고 싶을 때 사용하는 플러그인입니다 
	Plugin 'ctags.vim' 
	
	" 명령어 자동완성 플러그인입니다 (inc + <tab> : #include <>)
    Plugin 'honza/vim-snippets'  
	Plugin 'SirVer/ultisnips'

    " [] {} 등 괄호 입력시 자동으로 닫아주는 플러그인
	Plugin 'jiangmiao/auto-pairs' 
   
    " git project에서 수정,추가,제거된 라인을 표시해주는 gitgutter for Vim
	Plugin 'airblade/vim-gitgutter'

    "vim과 tig switching
    Plugin 'iberianpig/tig-explorer.vim'

    "파일 저장시 문법 검사하여 에러를 띄워 줌.
	Plugin 'scrooloose/syntastic'

     "주석 포맷 만들어 줌.
	Plugin 'DoxygenToolkit.vim'
	
    "Plugin 'scrooloose/nerdtree'
	Plugin 'The-NERD-tree'
	
    "\+c 누른 후 space를 누르면 블럭으로 색깔 칠해져 있는 것들 주석 처리 됨	
    "주석을 달아 줌
    Plugin 'preservim/nerdcommenter'

    " C++, Python 등 언어의 자동완성 플러그인 
	Plugin 'AutoComplPop'
	Plugin 'ycm-core/youcompleteme'  
	Plugin 'rdnetto/ycm-generator' 
	Plugin 'OmniCppComplete'
    
    "vim-smooth-scroll
    Plugin 'terryma/vim-smooth-scroll'
   
    "fzf 파일 찾기
    Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }

    "vim corlor/scheme
    Plugin 'morhetz/gruvbox'

    "vim-bitbake
    Plugin 'kergoth/vim-bitbake'

    "문자열 찾기.
	"Plugin 'rking/ag.vim' 
    "ACk(grep)
    "Plugin 'burntsushi/ripgrep'
    "Plugin 'mileszs/ack.vim'
    "Plugin 'majutsushi/tagbar'
    "Plugin 'jremmen/vim-ripgrep'
    Plugin 'miki725/vim-ripgrep'
    

    "하단에 해당 함수의 를 보여 줌.
	Plugin 'wesleyche/srcexpl'

    "cscope 설정
    Plugin 'cscope_plus.vim' 

	"열려 있는 소스파일의 클래스, 함수 변수 정보 창
    Plugin 'taglist.vim'	
	
    "마지막에 작업한 솔루션 또는 파일 리스트 중 바로 열수 있음
    Plugin 'mhinz/vim-startify'

    "원하는 터미널의 단어로 바로 이동
    Plugin 'easymotion/vim-easymotion'

	" original repos on github
	Plugin 'tpope/vim-fugitive'

    "HTML Code Faster
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

    "Web Application Development framework
    Plugin 'tpope/vim-rails.git'
    Plugin 'vim-ruby/vim-ruby'

    "Find file(need ruby)
    "Plugin 'wincent/command-t'

	" ...

call vundle#end()
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

"-----------------------------------------------------------------------"
"vim 환경설정
"-----------------------------------------------------------------------"
	scripte utf-8
	" vim:set fenc=utf-8 tw=0:
	" Vim setting for sirini

	" Vim 전용 기능 사용
	set nocp

	" 옵션 복원
	set all&

	" 명령어 기록 갯수
	set hi=100

	" 백스페이스 사용
	set bs=indent,eol,start

	" 인코딩 설정
	"let &tenc=&enc
	"set enc=utf-8
	set fenc=utf-8
	set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,ucs-2le,latin1

	" 커서 위치 항상 보이기
	set ru

	" 완성중인 명령을 표시
	set sc

	" 줄번호 표시
	set nu

	" 줄 번호 표시 너비 설정
	set nuw=5

	" 탭 크기 설정
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set expandtab "탭 대신 스페이스바로 채워 넣음

	autocmd FileType make setlocal noexpandtab "Makeile은 tab 문법이기 때문에 스페이스바 대체 안함

	" 탭 >> 공백 변환 사용안함
	"set noet
	"set sts=0

	" 자동 줄바꿈 안함
	"set nowrap
    set wrap "문자열이 길어 화면에 다 표시 안될 때 자동으로 줄바꿈 하여 보여줌
    set linebreak
    set showbreak=+++\

	" 자동 들여쓰기
	set autoindent

	" C프로그래밍 자동 들여쓰기
	set cindent

	"magic 기능 사용
	"set magic

	" 이동 동작시 줄의 시작으로 자동 이동
	set sol

	" 비쥬얼 모드 동작 설정
	set sel=exclusive

	" 괄호짝 찾기에서 <> 도 찾도록 추가
	set mps+=<:>

	" 새로 추가된 괄호 짝 보여주기
	"set sm

	" 검색어 강조
	set hls

	" 검색시 파일 끝에서 되돌리기 안함
	set nows

	" 검색시 대소문자 구별 안함
	set ic

	" 스마트한 대소문자 구별 기능 사용
	set scs

	" 항상 bottom status 라인을 표시
	set ls=2

	" 커스텀 확장자들에게 파일 형식 설정
	"au BufRead,BufNewFile *.dic setl ft=php

	"파일 형식에 따른 신택스 하이라이팅 켜기
	sy enable

	"스마트 들여쓰기
	set smartindent

	"괄호 매치
	set showmatch

	set ruler

	"마우스 자동
	set mouse=a

	set exrc

	set wmnu
	
	"클립보드 복사
	"set cb=unnamed
	"set clipboard=unnamed "use OS clipboard
	set clipboard=unnamedplus "use OS clipboard

	"대소문자 구분(구분 없이 할 때 i 옵션 또는 ignorecase)
	set noignorecase

	"파일 타입 설정
	set encoding=utf-8
	set fileencodings=utf-8,cp949
	
	"set termguicolors
	"color evening

    " 키워드 입력시 점진적 검색
    set incsearch

    " vi 편집기록 기억 갯수 .viminfo에 기록
    set history=1000

	autocmd VimLeave * call system("xsel -ib", getreg('+'))

"-----------------------------------------------------------------------"
" ctags database path 설정 
"-----------------------------------------------------------------------"
	set tag=./tags;/

"-----------------------------------------------------------------------"
" ctags database path 설정 
"-----------------------------------------------------------------------"
set background=dark
let g:gruvbox_contrast_dark = 'soft'
"let g:gruvbox_contrast_light = 'soft'
"let g:gruvbox_transparent_bg = 1
"let g:gruvbox_italic = 1
"let g:gruvbox_underline=1
"let g:gruvbox_undercurl=1
let g:gruvbox_termcolors=1
"let g:gruvbox_number_column='aqua'
"let g:gruvbox_sign_column='aqua'
let g:gruvbox_color_column='aqua'
colorscheme gruvbox


"-----------------------------------------------------------------------"
" cscope database path 설정 
"-----------------------------------------------------------------------"
	function! LoadCscope()
		let db = findfile("cscope.out", ".;")
		if (!empty(db))
			let path = strpart(db, 0, match(db, "/cscope.out$"))
			set nocscopeverbose " suppress 'duplicate connection' error
			exe "cs add " . db . " " . path
			set cscopeverbose
		endif
	endfunction
	au BufEnter /* call LoadCscope()

"-----------------------------------------------------------------------"
" User Key Setting
"-----------------------------------------------------------------------"
"nnoremap <F1> :set invpaste paste?<CR>
"set pastetoggle=<F1>
let mapleader = ","

" 원래 이 단축키로 바인딩해 두었던 :tabnew를 대체한다.
nmap <leader>N :enew<cr>
" 다음 버퍼로 이동
nnoremap <leader>q :bp<CR>
" 이전 버퍼로 이동
nnoremap <leader>w :bn<CR>
" 현재 버퍼를 닫고 이전 버퍼로 이동
" 탭 닫기 단축키를 대체한다.
nmap <leader>bq :bp <BAR> bd #<CR>

" 모든 버퍼와 각 버퍼 상태 출력
nmap <leader>bl :ls<CR>

set t_Co=256

"fzf excute
nmap <leader>f :FZF<cr>

"Rg excute
"Input Pattern
nmap <leader>r :Rg<Space>
"Input cursor location
nmap <leader>R :Rg<cr>


" Key Setting - resize windows
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>


"-----------------------------------------------------------------------"
" User  환경설정 
"-----------------------------------------------------------------------"
	nmap <F2> v]}zf
	nmap <F3> :Gblame<cr>
	nmap <F4> :w<cr> : make<cr> : ccl<cr>  cw<cr> "F4 누를 경우 컴파일(Makeile있어야 함.)
	nmap <F5> :norm I//<cr> "F5 누를시 현재 라인 주석, 범위 설정 후 누르면 범위 주석
	nmap <F6> :norm ^xx<cr> "F6 누를시 주석 해제
	nmap <F7> :TlistToggle<CR>			" F7 key = Tag List Toggle
	nmap <F8> :SrcExplToggle<CR>		" F8 key = SrcExpl TOggle
	"nmap <F10> :let g:view_source = 0<CR>
    nmap <F10> :!rm -rf cscope.files <CR> :!find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files <CR> :!cscope -i cscope.files <CR><CR>
    map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ./ <CR><CR>

"-----------------------------------------------------------------------"
" Tag List 환경설정 
"-----------------------------------------------------------------------"
	filetype on				" vim filetype on
	let Tlist_Ctags_Cmd = "/usr/bin/ctags"	" ctags 프로그램 위치
	let Tlist_Inc_Winwidth = 0		" window width change off
	let Tlist_Exit_OnlyWindow = 0		" tag/file 선택 완료 시 taglist
						" window close = off
	let Tlist_Auto_Open = 0			" vim 시작 시 window open
	let Tlist_Use_Right_Window = 1		" vim 시작 시 window open

"-----------------------------------------------------------------------"
" Source Explorer 환경설정
"-----------------------------------------------------------------------"
"	nmap  <C-H> <C-W>h					" 왼쪽 창으로 이동
"	nmap  <C-J> <C-W>j					" 하단(preview) 창으로 이동
"	nmap  <C-K> <C-W>k					" 상단 창으로 이동
"	nmap  <C-L> <C-W>l					" 오른쪽 창으로 이동

	let g:SrcExpl_winHeight = 12		" SrcExpl 윈도우 높이 지정
	let g:SrcExpl_refreshTime = 100		" refreshing time = 100ms
	let g:SrcExpl_jumpKey = "<ENTER>"		" 해당 definition으로 jump
	let g:SrcExpl_gobackKey = "<SPACE>"		" back
    let g:SrcExpl_pluginList = [
            \ "__Tag_List__",
            \ "_NERD_tree_",
            \ "Source_Explorer"
        \ ]
    " // Enable/Disable the local definition searching, and note that this is not 
    " // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
    " // It only searches for a match with the keyword according to command 'gd' 
    let g:SrcExpl_searchLocalDef = 1 

    " // Workaround for Vim bug @https://goo.gl/TLPK4K as any plugins using autocmd for
    " // BufReadPre might have conflicts with Source Explorer. e.g. YCM, Syntastic etc.
    let g:SrcExpl_nestedAutoCmd = 1

    " // Do not let the Source Explorer update the tags file when opening 
    let g:SrcExpl_isUpdateTags = 0 

    " // The color schemes used by Source Explorer. There are five color schemes
    " // supported for now - Red, Cyan, Green, Yellow and Magenta. Source Explorer
    " // will pick up one of them randomly when initialization.
    let g:SrcExpl_colorSchemeList = [
            \ "Cyan",
        \ ]
"-----------------------------------------------------------------------"
" NERD Tree 환경설정
"-----------------------------------------------------------------------"
	let NERDTreeWinPos = "left"		" NERD Tree위치 = 왼쪽
	nmap  <C-F> :NERDTreeFind<CR>  	" Ctrl + F Find Current File
	"nmap  <F9> :NERDTreeToggle<CR>	" F9 Key = NERD Tree Toggle


"-----------------------------------------------------------------------"
" cscope 설정 값
"-----------------------------------------------------------------------"
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb

if filereadable("./cscope.out")
	cs add cscope.out
else
	cs add /usr/src/linux/cscope.out
endif
	"cs add /project/sub_micom/cscope.out
set csverb


"-----------------------------------------------------------------------"
" cscope 단축키 설정	
"-----------------------------------------------------------------------"
    nmap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>	"함수명과 일치하는 심볼을 모두 찾을 때
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	"함수가 정의된 곳을 찾을 때
    nmap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>	"함수를 호출하는 곳 찾을 때
    nmap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>	"텍스트 스트링 찾기"
    nmap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>	"정규표현식 패턴으로 찾기
    nmap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR> "파일 찾기	
    nmap <C-\>i :scs find i <C-R>=expand("<cfile>")<CR><CR>	"헤더파일 찾기
    nmap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR> "지정된 함수가 그 안에서 부르는 함수 찾기


"-----------------------------------------------------------------------"
" Syntastic 설정
"-----------------------------------------------------------------------"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_c_remove_include_errors = 1
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_c_no_include_search = 1

"let g:syntastic_cpp_check_header = 0
"let g:syntastic_c_check_header = 0

"let g:syntastic_c_config_file = '.vrs_include_file_for_syntastic'
let g:syntastic_c_config_file = '.syntastic_header_config.conf'

let g:syntastic_c_compiler = 'gcc'
let g:syntastic_c_compiler_options = "-std=c11 -Wall -Wextra -Wpedantic"

"let g:syntastic_c_auto_refresh_includes = 1
"let g:syntastic_c_include_dirs = [ '-I../include', '-Iinclude' ]

"let g:syntastic_cpp_compiler = 'g++'
"let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
"let g:syntastic_cpp_config_file = '.vrs_include_file_for_syntastic'
let g:syntastic_cpp_no_include_search = 1
"let g:syntastic_cpp_no_default_include_dirs = 1

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': []  }
nnoremap <C-w>e :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"-----------------------------------------------------------------------"
" Tig 설정	
"-----------------------------------------------------------------------"
" open tig with current file
nnoremap <Leader>T :TigOpenCurrentFile<CR>

" open tig with Project root path
nnoremap <Leader>t :TigOpenProjectRootDir<CR>

" open tig grep
nnoremap <Leader>g :TigGrep<CR>

" resume from last grep
nnoremap <Leader>l :TigGrepResume<CR>

" open tig grep with the selected word
vnoremap <Leader>g y:TigGrep<Space><C-R>"<CR>

" open tig grep with the word under the cursor
nnoremap <Leader>cg :<C-u>:TigGrep<Space><C-R><C-W><CR>

" open tig blame with current file
nnoremap <Leader>b :TigBlame<CR>"

let g:tig_explorer_use_builtin_term = 1

"-----------------------------------------------------------------------"
" NERDTree 설정	
"-----------------------------------------------------------------------"
"let g:NERDTreeIndicatorMapCustom = {
"    \ "Modified"  : "✹",
"    \ "Staged"    : "✚",
"    \ "Untracked" : "✭",
"    \ "Renamed"   : "➜",
"    \ "Unmerged"  : "═",
"    \ "Deleted"   : "✖",
"    \ "Dirty"     : "✗",
"    \ "Clean"     : "✔︎",
"    \ "Ignored"   : "☒",
"    \ "Unknown"   : "?"
"    \ 
"}
"let g:NERDTreeShowIgnoredStatus = 1

"-----------------------------------------------------------------------"
" 변수 자동완성 기능
"-----------------------------------------------------------------------"
"function! InsertTabWrapper()
"	let col = col('.') - 1
"	if !col || getline('.')[col-1]!~'\k'
"		return "\<TAB>"
"	else
"		if pumvisible()
"			return "\<C-P>"
"		else
"			return "\<C-N>\<C-P>"
"		end
"	endif
"endfunction
"
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
"inoremap <expr> <CR> pumvisible() ? "<C-Y><CR>" : "<CR>"


function! InsertTabWrapper()
 let col = col('.') - 1
 if !col || getline('.')[col-1]!~'\k'
 return "\<TAB>"
 else
 if pumvisible()
 return "\<C-N>"
 else
 return "\<C-N>\<C-P>"
 end
 endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
 
hi Pmenu ctermbg=blue
hi PmenuSel ctermbg=yellow ctermfg=black
hi PmenuSbar ctermbg=blue

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

"-----------------------------------------------------------------------"
" 멤버변수 자동완성 기능
"-----------------------------------------------------------------------"
" --- OmniCppComplete ---
" -- required --
set nocp " non vi compatible mode
filetype plugin on " enable plugins

" -- optional --
"auto close options when exiting insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt=menu,menuone

" -- configs --
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e.parameters) in popup window

" -- ctags --
" map F12 to generate ctags for current folder:
"  " add current directory's generated tags file to available tags
set tags+=./tags

"-----------------------------------------------------------------------"
" 파일 탐색 속도 향상 
"-----------------------------------------------------------------------"
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
\ }


"-----------------------------------------------------------------------"
" cursor highlight
"-----------------------------------------------------------------------"
" vim_options : highlight cursorline
"
":hi CursorLine   cterm=NONE ctermbg=green ctermfg=white guibg=darkred guifg=white
":hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>


"-----------------------------------------------------------------------"
" smooth-scroll
"-----------------------------------------------------------------------"
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 5)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 5)<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 3)<CR>


"-----------------------------------------------------------------------"
" rg
"-----------------------------------------------------------------------"
let g:rg_command = 'rg --vimgrep -S'
let g:rg_highlight = 'true'


"-----------------------------------------------------------------------"
" Aiarline
"-----------------------------------------------------------------------"
set laststatus=2
let g:airline#extensions#tabline#enabled = 1 "버퍼 목록 켜기
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" 파일명만 출력
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_highlighting_cache = 1

let g:airline_powerline_fonts = 1
let g:airline_theme= 'minimalist'
let g:airline_section_y = '' 
let g:airline_section_warning= '' "마지막 status창 사용 안함
" 버퍼 목록 켜기
" 이 옵션은 버퍼를 수정한 직후 버퍼를 감춰지도록 한다.
" 이 방법으로 버퍼를 사용하려면 거의 필수다.
set hidden


"-----------------------------------------------------------------------"
" YCM Option 
"-----------------------------------------------------------------------"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/examples/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 1
"let g:ycm_key_list_select_completion = ['', '']
"let g:ycm_key_list_previous_completion = ['', '']
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_warning_symbol = '>*'
let g:ycm_seed_identifiers_with_syntax = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_complete_in_strings = 1
"let g:ycm_complete_in_comments = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_auto_treigger = 1
"let g:ycm_key_invoke_completion = '<C-b>'
"let g:ycm_always_populate_location_list = 1
"let g:ycm_complete_in_comments = 1

"nnoremap g :YcmCompleter GoTo
"nnoremap gg :YcmCompleter GoToImprecise
"nnoremap d :YcmCompleter GoToDeclaration
"nnoremap t :YcmCompleter GetType
"nnoremap p :YcmCompleter GetParent 

"nmap <leader>d :YcmCompleter GoToDeclaration<cr>
"nmap <leader>g :YcmCompleter GoTo<cr>

 "let g:ycm_semantic_triggers =  {
 "  \   'c': ['->', '.'],
 "  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
 "  \            're!\[.*\]\s'],
 "  \   'ocaml': ['.', '#'],
 "  \   'cpp,cuda,objcpp': ['->', '.', '::'],
 "  \   'perl': ['->'],
 "  \   'php': ['->', '::'],
 "  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
 "  \   'ruby,rust': ['.', '::'],
 "  \   'lua': ['.', ':'],
 "  \   'erlang': [':'],
 "  \ }
 "
"-----------------------------------------------------------------------"
" Runtime Path Manipulation
"-----------------------------------------------------------------------"
"let g:indent_guides_enable_on_vim_startup = 1
execute pathogen#infect()

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

let macvim_hig_shift_movement = 1

" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
execute pathogen#infect()

filetype plugin indent on
syntax on
let mapleader = ','
let maplocalleader = ','
set shortmess+=c

set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

"set diffexpr=MyDiff()
"if !exists("*MyDiff")
   "function MyDiff()
     "let opt = '-a --binary '
     "if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
     "if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
     "let arg1 = v:fname_in
     "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
     "let arg2 = v:fname_new
     "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
     "let arg3 = v:fname_out
     "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
     "let eq = ''
     "if $VIMRUNTIME =~ ' '
       "if &sh =~ '\<cmd'
         "let cmd = '""' . $VIMRUNTIME . '\diff"'
         "let eq = '"'
       "else
         "let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
       "endif
     "else
       "let cmd = $VIMRUNTIME . '\diff'
     "endif
     "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
   "endfunction
"endif

set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


"Set Color Scheme and Font Options
"colorscheme kolor
colorscheme inkpot 
"set guifont=Consolas:h12
set guifont=monaco:h12

set autoindent
set hidden
set history=1000
set ignorecase
set incsearch
set mouse=a
set noerrorbells
set nu
set ruler
set scrolloff=5               " keep at least 5 lines above/below
set shiftwidth=3
set showcmd
set showmatch
set sidescrolloff=5           " keep at least 5 lines left/right
set smartcase
set smarttab                  " tab and backspace are smart
set softtabstop=3
set tabstop=3                 " 6 spaces
set undolevels=1000
set vb
set viminfo+=n$VIM/_viminfo

set backspace=indent,eol,start
set splitright
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
"set clipboard=unnamedplus,autoselect

"  searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync
set wildmenu
set wildmode=list:longest,full
"set wildchar=<ESC>

:imap jj <Esc>

:nnoremap \s :%s/\<<C-r><C-w>\>/
:nnoremap \g :%g/\<<C-r><C-w>\>/

:nnoremap <silent> <BS> :nohlsearch<cr>

" " Edit vimrc \ev
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>
"
" " Edit gvimrc \gv
nnoremap <silent> <Leader>gv :tabnew<CR>:e ~/.gvimrc<CR>

imap <S-Enter> <Esc>o
imap <C-Enter> <Esc>O


:vmap <leader>z :<C-U>%s/\<<c-r>*\>/
set expandtab
set mousemodel=extend

"Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline+=%<%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

let NERDTreeDirArrows=0
"let g:EasyMotion_leader_key = '<Leader>'
map <Leader>n :NERDTreeToggle<CR>
"map <Leader>l :TlistToggle<CR>
map <Leader>l :TagbarToggle<CR>
let Tlist_Use_Right_Window   = 1

let g:nerdtree_tabs_open_on_gui_startup = 0
set spell spelllang=en_us

set listchars=tab:▸\ ,eol:¬

"Invisible character colors 
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59


:nmap <F3> :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR><CR>
:vmap <leader>z :<C-U>%s/\<<c-r>*\>/

nmap <LocalLeader>tl :set list!<cr>
" toggle paste mode
nmap <LocalLeader>pp :set paste!<cr>


":nmap <C-S-Tab> :tabprevious<cr>
":nmap <C-Tab> :tabnext<cr>
":imap <C-S-Tab> <ESC>:tabprevious<cr>i
":imap <C-Tab> <ESC>:tabnext<cr>i
":nmap <C-y> :tabnew<cr>
":imap <C-y> <ESC>:tabnew<cr>i
":map <C-e> :tabclose<cr>
":imap <C-e> <esc>:tabclose<cr>
":map <F3> :tabs<cr>
":imap <F3> :tabs<cr>

:nmap <C-S-Tab> :bp<cr>
:nmap <C-Tab> :bn<cr>
:imap <C-S-Tab> <ESC>:bp<cr>i
:imap <C-Tab> <ESC>:bn<cr>i
:nmap <C-y> :bn<cr>
:imap <C-y> <ESC>:bn<cr>i
:map <C-e> :tabclose<cr>
:imap <C-e> <esc>:tabclose<cr>
:map <F3> :tabs<cr>
:imap <F3> :tabs<cr>

:nmap <A-left> :bp<cr>
:nmap <A-right> :bn<cr>
":imap <C-S-Tab> <ESC>:tabprevious<cr>i
":imap <C-Tab> <ESC>:tabnext<cr>i
":nmap <C-y> :tabnew<cr>
":imap <C-y> <ESC>:tabnew<cr>i
":map <C-e> :tabclose<cr>
":imap <C-e> <esc>:tabclose<cr>
":map <F3> :tabs<cr>
":imap <F3> :tabs<cr>


let g:ScreenImpl='Tmux' " I use tmux
noremap <leader>S :ScreenShell 
vnoremap <leader>s :ScreenSend<CR> 
noremap <leader>s :ScreenSend<CR> 


"moves the block with alt+up/down in all three modes.
nnoremap <A-down> :m .+1<CR>==
nnoremap <M-down> :m .+1<CR>==
nnoremap <A-up> :m .-2<CR>==
inoremap <A-down> <Esc>:m .+1<CR>==gi
inoremap <M-down> <Esc>:m .+1<CR>==gi
inoremap <A-up> <Esc>:m .-2<CR>==gi
vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <M-down> :m '>+1<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv

set diffopt=vertical
autocmd User fugitive 
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif
nnoremap <F5> :GundoToggle<CR>
let g:EclimCompletionMethod = 'omnifunc'

"----- haskell
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-n>"


"let g:SuperTabDefaultCompletionType    = '<C-n>'
"let g:SuperTabContextDefaultCompletionType = '<c-n>'


"let g:SuperTabCrMapping                = 0

"--------------------------------------------------
" Supertab - enhanced tab behavior based on context
"--------------------------------------------------

"Bundle 'ervandew/supertab'

"------haskell

"----------------------------------------
" UltiSnips - Fancy snippet functionality
"----------------------------------------

"Bundle 'SirVer/ultisnips'

let g:UltiSnipsSnippetsDir='~/.vim/snippets'
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'

nnoremap <leader>ue :UltiSnipsEdit<cr>


" vim:ft=vim
let delimitMate_expand_cr = 1

" vertical line indentation
let g:indentLine_color_term = 239
"let g:indentLine_color_gui = '#09AA08'
let g:indentLine_color_gui = '#0C0C0C'
"let g:indentLine_char = ''
let g:indentLine_char = '│'

map <F4> :w<CR> :compiler gradle<CR> :make test<CR>:cw 4<CR>

nnoremap <silent> <F11> :ToggleBufExplorer<CR>
let g:bufExplorerFindActive=0        " Do not go to active window.
map <leader>be :BufExplorer<cr>

cnoremap %% <C-R>=expand('%:h').'/'<CR>
"noremap <leader><leader> <silent> <C-^>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
set undodir=$HOME/.VIM_UNDO_FILES
if has('presistent_undo')
   set undofile
endif
vmap   <expr>  <LEFT>    DVB_Drag('left')
vmap   <expr>  <RIGHT>   DVB_Drag('right')
vmap   <expr>  <DOWN>    DVB_Drag('down')
vmap   <expr>  <UP>      DVB_Drag('up')
vmap   <expr>  D         DVB_Duplicate() 

set nosol
set foldmethod=syntax
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
set nospell
let g:dbext_default_profile_Postgres = 'type=PGSQL:host=localhost:port=5432:user=amir:dbname=amir'
let g:dbext_default_profile = 'Postgres'
imap <c-l> <space>-><space>
"imap <c-l> <Esc>[s1z=`]a

autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
"let g:livepreview_previewer = 'evince'


"to disable eclim from interfering with syntastic
let g:EclimFileTypeValidate = 0

"let g:syntastic_mode_map { "mode": "passive", "active_filetypes": ["python"], "passive_filetypes": ["haskell] }
"let g:syntastic_filetype_checkers['python'] = ['python'] " will use python as checker
let g:syntastic_python_checkers = ["python"]
let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": ["python"],
        \ "passive_filetypes": ["haskell"] }

"-----------------------
"map <Leader>s :SyntasticToggleMode<CR>
map <Leader>e :Neomake<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

"let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

"let g:SuperTabDefaultCompletionType = 'context'

"if has("gui_running")
  "imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
"else " no gui
  "if has("unix")
    "inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  "endif
"endif

let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

"autocmd BufWritePost *.hs GhcModCheckAsync


"----------------------------
"enables autosave
let g:auto_save = 5
nnoremap <leader>jd :YcmCompleter GoTo<CR>
set relativenumber
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }


"-----------------------------------------------------------
" YouCompleteMe - Intelligent completion with fuzzy matching
"-----------------------------------------------------------

"Bundle 'Valloric/YouCompleteMe'
"-------------------------------
let g:ycm_dont_warn_on_startup = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

let g:ycm_filetype_blacklist = {}

let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:ycm_key_list_select_completion   = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_semantic_triggers = {'haskell' : ['.'], 'javascript': ['.']}

""----------------------
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_show_diagnostics_ui = 0 

"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_cache_omnifunc = 1


let g:ycm_global_ycm_extra_conf = '/Users/amir/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :Ag<SPACE>

let g:syntastic_javascript_checkers = ['eslint']

"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

"haskell
" Cyclic tag navigation {{{
let g:rt_cw = ''
function! RT()
    let cw = expand('<cword>')
    try
        if cw != g:rt_cw
            execute 'tag ' . cw
            call search(cw,'c',line('.'))
        else
            try
                execute 'tnext'
            catch /.*/
                execute 'trewind'
            endtry
            call search(cw,'c',line('.'))
        endif
        let g:rt_cw = cw
    catch /.*/
        echo "no tags on " . cw
    endtry
endfunction
map <C-]> :call RT()<CR>
" }}}

""Haskell parantesize two words
"map ,,) bys2w)

nmap ,j  m`lb~``

nmap ,,) m`lbys2w)``
nmap ,,( m`lbbys2w)``
nmap ,,,) m`lbys3w)``
map ,,j gUllguw
imap ,. <Space>-><Space>
 
map <silent> <Leader>o :CtrlP()<CR>
set expandtab

"let g:haddock_browser="/Users/amir/.stack/snapshots/x86_64-osx/lts-8.5/8.0.2/doc/index.html"
"au BufEnter *.hs compiler ghc

let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

" cmake4vim.vim - Vim plugin for cmake integration
" Maintainer:   Ilya Churaev <https://github.com/ilyachur>
" Version:      0.2

let s:cmake4vim_plugin_version = '0.2'

" Initialization {{{ "
if exists("loaded_cmake4vim_plugin")
  finish
endif
let loaded_cmake4vim_plugin = 1

autocmd BufWritePre *.cmake call cmake4vim#CMakeFileSaved()
autocmd BufWritePre CMakeLists.txt call cmake4vim#CMakeFileSaved()
" }}} Initialization "

" Commands {{{ "
command! -nargs=? CMake call cmake4vim#GenerateCMake(<f-args>)
command! -nargs=? CMakeResetAndReload call cmake4vim#ResetAndReloadCMake(<f-args>)
command! CMakeReset call cmake4vim#ResetCMakeCache()
command! CMakeClean call cmake4vim#CleanCMake()
command! -nargs=? CMakeSelectTarget call cmake4vim#SelectTarget(<f-args>)
" }}} Commands "


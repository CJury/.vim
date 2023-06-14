" unreal-engine.vim
"
" Vim helper commands related to UnrealEngine

" helper function for building an unreal project

" Output msg to a scratch buffer

let g:unreal_install_path='/home/christopher-jury/repos/UnrealEngine'
let g:unreal_compiler_override='clang++'
let s:buffer_name = 'unreal-build-log'

function RunCmd(cmd)
    let l:job = job_start(a:cmd, {'out_io':'buffer', 'out_name':s:buffer_name, 'pty':1,
                \'err_io':'buffer', 'err_name':s:buffer_name, 'close_cb':'CloseHandler'})
endfunction

function UnrealBuild(opts)
    let s:opts = extend(copy(a:opts), {
                \'export_compile_commands':1,
                \'build_directory':getcwd(),
                \'target':fnamemodify(getcwd(), ':t'),
                \'platform':'Linux',
                \})

    let l:cmd = 'UnrealBuildTool '

    if s:opts['export_compile_commands']
        let l:cmd = l:cmd.'-mode=GenerateClangDatabase '
    endif

    let l:uproject_path = fnameescape(s:opts['build_directory'].'/'.s:opts['target']).'.uproject'
    let l:cmd = l:cmd.'-project='.l:uproject_path.' -game -engine '
                \.fnameescape(s:opts['target']).' Development '.fnameescape(s:opts['platform'])

    let s:buffer_name = 'unreal-build-log'

    " Compile commands are generated in the UnrealBuild dir so copy
    function! CloseHandler(channel)
        if s:opts['export_compile_commands']
            let l:cc_dstpath = fnameescape(s:opts['build_directory'].'/compile_commands.json')
            let l:cc_srcpath = fnameescape(g:unreal_install_path.'/compile_commands.json')
            " Copy src to dst
            call RunCmd('cp '.l:cc_srcpath.' '.l:cc_dstpath)
            " Override compiler used in commands
            " The compile commands outputted by UnrealBuildTool don't actually
            " work correctly so try and fix.
            call RunCmd('sed -i -e s:\".*clang++\":g++: '.l:cc_dstpath)

        endif
    endfunction

    echom l:cmd
    call RunCmd(l:cmd)
    let l:job = job_start(l:cmd, {'out_io':'buffer', 'out_name':s:buffer_name, 'pty':1,
                \'err_io':'buffer', 'err_name':s:buffer_name, 'close_cb':'CloseHandler'})
    call setbufvar(s:buffer_name,'buftype','nofile')
    call setbufvar(s:buffer_name,'bufhidden','hide')
    call setbufvar(s:buffer_name,'nobuflisted','0')
    if bufwinnr(s:buffer_name) < 0
        execute 'sbuffer' s:buffer_name
    endif

endfunction



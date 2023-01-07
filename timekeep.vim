function s:getElapsedTime(time)
    let wsec = a:time % 60
    let time = a:time / 60
    let wmin = time % 60
    let whour = time / 60
    let etime = wsec . "�b"
    if whour > 0
        let etime = whour . "����" . wmin . "��" . etime
    elseif wmin > 0
        let etime = wmin . "��". etime
    endif
    return etime
endfunction

function! Timestart()
    let s:start = localtime()
endfunction

function! Timestop()
    let s:now= strftime("%Y/%m/%d")
    let s:stop = localtime()
    let s:time = s:stop - s:start
    let etime = s:getElapsedTime(s:time)
    let s:outputfile = "C:\\Users\\songp\\OneDrive\\�h�L�������g\\test.txt"
    "let line = [s:time, s:stop]
    "call writefile(line, s:outputfile)
    execute ":redir! >> " . s:outputfile
       silent echon s:now "\t" etime "\n"
    redir END
endfunction

command Timestart : call Timestart()
command Timestop  : call Timestop()

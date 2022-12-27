function! Timestart()
    let s:start = strftime("%Y/%m/%d")
endfunction

function! Timestop()
    let s:stop = strftime("%Y/%m/%d")
    let s:time = s:stop - s:start
    let s:outputfile = "C:\\Users\\songp\\OneDrive\\ƒhƒLƒ…ƒƒ“ƒg\\test.txt"
    "let line = [s:time, s:stop]
    "call writefile(line, s:outputfile)
    execute ":redir! >> " . s:outputfile
       silent echon s:stop "\t" s:time "\n"
    redir END
endfunction

command Timestart : call Timestart()
command Timestop  : call Timestop()

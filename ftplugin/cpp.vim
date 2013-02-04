if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

"Set the formatter name and arguments for this filetype
" http://astyle.sourceforge.net/astyle.html
let s:prgname   = "astyle"
" let s:arguments = "--mode=cpp --style=attach -s2 --indent-classes
                  " \--indent-switches --indent-cases --indent-namespaces
                  " \--break-blocks --pad-oper --pad-paren --pad-header
                  " \--delete-empty-lines --add-brackets --convert-tabs
                  " \--align-pointer=middle --align-reference=middle"

let s:arguments = "--mode=c --style=attach -s2 --indent-classes"
        \ . " " . "--indent-switches --indent-cases --indent-namespaces"
        \ . " " . "--pad-oper --pad-paren --pad-header"
        \ . " " . "--delete-empty-lines"
        \ . " " . "--keep-one-line-blocks --keep-one-line-statements"
        \ . " " . "--align-reference=middle --align-pointer=middle"
        \ . " " . "--convert-tabs"

"Set the formatprg option, if the formatter is installed
"globally or in the formatters/ folder
call g:FindFormatter(s:prgname, s:arguments)

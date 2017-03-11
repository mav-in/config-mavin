function !!
    eval $history[1] $argv
end function

function sudo
    if test $argv
        if test $argv = "!!"
            eval /usr/bin/sudo $history[1]
        else
            eval /usr/bin/sudo $argv
        end
    end
end
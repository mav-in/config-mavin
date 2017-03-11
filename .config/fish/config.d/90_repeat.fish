function !!
    eval $history[1] $argv
end function

function sudo
    if test $argv[1]
        if test $argv[1] = "!!"
            eval /usr/bin/sudo $history[1]
        else
            eval /usr/bin/sudo $argv
        end
    end
end
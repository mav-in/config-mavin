function fish_greeting
    echo -s "Shell: " (set_color green) "fish" (set_color normal)
    echo -s "ID:  " (set_color C34D0A) (id) (set_color normal)
    echo -s "Host:  " (set_color 005FD7) (hostname) (set_color normal)
    echo -s "PWD: " (set_color green) "$PWD" (set_color normal)
end

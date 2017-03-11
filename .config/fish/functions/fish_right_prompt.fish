# right prompt for agnoster theme
# shows vim mode status

function fish_right_prompt -d "Write out the right prompt"
    set -l external_status $status
    set -l external_cmd_duration $CMD_DURATION
    if [ (count $external_cmd_duration) -eq 0 ]
        set external_cmd_duration 0
    end
    switch "$external_status"
    case 0
        set_color green
    case '*'
        set_color red
    end
    echo -s -n $external_status
    if [ $external_status -gt 128 ]
        set -l external_signal (math "$external_status-128")
        if [ $external_signal -le 64 ]
            set -l external_signame (kill --list=$external_signal)
            echo -s -n "($external_signal $external_signame)"
        end
    end
    echo -s -n ' '

    set_color C34D0A
    echo -s -n {$external_cmd_duration}ms ' '

    set_color 005fd7
    date "+%H:%M %a %d "
    set_color normal
end

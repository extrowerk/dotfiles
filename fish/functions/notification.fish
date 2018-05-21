function notification
    if test $CMD_DURATION
        # Store duration of last command
        set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.3fs", $1 / $2}')

        # Show notification when a command takes longer than notify_duration
        set notify_duration 10000
        set exclude_cmd "zsh|bash|less|man|more|ssh|drush php"
        if begin
                test $CMD_DURATION -gt $notify_duration
                and echo $history[1] | grep -vqE "^($exclude_cmd).*"
            end

            # Show te notification
            notify --type information --icon /boot/system/apps/Terminal --title "$history[1]" "Returned, took $duration seconds"

        end
    end
end

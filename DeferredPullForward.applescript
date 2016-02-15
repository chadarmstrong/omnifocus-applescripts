on run
    tell application "OmniFocus"
        set todayDate to current date
        set todayDate's hours to 0
        set todayDate's minutes to 0
        set todayDate's seconds to 0
        
        tell default document
            set todayTasks to (flattened tasks where ((defer date < todayDate) and (completed is false)))
            repeat with t in todayTasks
                set t's defer date to todayDate
            end repeat
        end tell
    end tell
end run

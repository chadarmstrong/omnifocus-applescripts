property todayStr : "Today"
property missingContextStr : "<empty>" -- string when context is missing
property barStr : "--" -- BAR string after header
property preStr : "?" & tab -- PRESTRING prior to each list item
property actGroupStr : "Project Group" -- pre-string when task is action group (shows when expandGroup = false)
property sepStr : " : " -- SEPARATOR string between context and task

tell application "OmniFocus"
    tell front document
        log "STARTED Rebalancing"
        
        -- get list of today's tasks
        set nowDate to current date
        set nowHours to hours of nowDate
        
        set todayDate to current date
        set todayDate's hours to 0
        set todayDate's minutes to 0
        set todayDate's seconds to 0
        set tomorrowDate to todayDate + 1 * days
        set todaysTasks to (flattened tasks where completed is false and ((defer date ? todayDate and defer date < tomorrowDate) or (due date ? todayDate and due date < tomorrowDate)))
        
        set maxNumReadingTasks to 2
        set currentNumReadingTasks to 0
        set maxNumVideoTasks to 1
        set currentNumVideoTasks to 0
        set maxNumClassTasks to 1
        set currentNumClassTasks to 0
        set maxNumExerciseTasks to 3
        set currentNumExerciseTasks to 0
        set isInterviewPracticeToday to false
        set isProgrammingPracticeToday to false
        set isRelationshipTaskToday to false
        set isRecreationalVideoToday to false
        
        repeat with t in todaysTasks
            
            if (nowHours > 10) then
                if (name of t = "work out") then
                    set t's completed to true
                end if
                if (name of t = "run") then
                    log my logThis(t, tomorrowDate)
                    set t's defer date to tomorrowDate
                end if
                if (name of t = "do shoulder PT exercises") then
                    log my logThis(t, tomorrowDate)
                    set t's defer date to tomorrowDate
                end if
                if (name of t = "make green smoothie (add Omega 3)") then
                    set t's completed to true
                end if
                if (name of t = "write 3 pages") then
                    log my logThis(t, tomorrowDate)
                    set t's defer date to tomorrowDate
                end if
            end if
            
            if (context of t is not missing value) then
                if (name of context of t = "book") then
                    set currentNumReadingTasks to currentNumReadingTasks + 1
                    if (currentNumReadingTasks > maxNumReadingTasks) then
                        log my logThis(t, tomorrowDate)
                        set t's defer date to tomorrowDate
                        
                    end if
                end if
            end if
            
            if (containing project of t is not missing value) then
                if (name of containing project of t = "Videos") then
                    set currentNumVideoTasks to currentNumReadingTasks + 1
                    if (currentNumVideoTasks > maxNumVideoTasks) then
                        log my logThis(t, tomorrowDate)
                        set t's defer date to tomorrowDate
                        
                    end if
                end if
                
                if (name of containing project of t = "Maintenance") then
                    set currentNumExerciseTasks to currentNumExerciseTasks + 1
                    if (currentNumExerciseTasks > maxNumExerciseTasks) then
                        log my logThis(t, tomorrowDate)
                        set t's defer date to tomorrowDate
                        
                    end if
                end if
                
                if (name of containing project of t = "Interview Practice") then
                    set isInterviewPracticeToday to true
                end if
                
                if (name of containing project of t = "Practice") then
                    set isProgrammingPracticeToday to true
                end if
                
            end if
            
            if (folder of containing project of t is not missing value) then
                if (name of folder of containing project of t = "Classes / Skills" and name of containing project of t = "Tech") then
                    set currentNumClassTasks to currentNumClassTasks + 1
                    if (currentNumClassTasks > maxNumClassTasks) then
                        log my logThis(t, tomorrowDate)
                        set t's defer date to tomorrowDate
                        
                    end if
                end if
                
                if (name of folder of containing project of t = "Relationship") then
                    set isRelationshipTaskToday to true
                end if
                
                if (name of folder of containing project of t = "Recreation / Video" and name of containing project of t = "Tech") then
                    set isRecreationalVideoToday to true
                end if
                
            end if
            
        end repeat
        
        if (isInterviewPracticeToday = false) then
            my deferInProject("Interview Practice", 4, todayDate)
        end if
        
        if (isProgrammingPracticeToday = false) then
            my deferInProject("Practice", 3, todayDate)
        end if
        
        if (isRelationshipTaskToday = false) then
            my deferInFolder("Relationship", 7, todayDate)
        end if
        
        if (isRecreationalVideoToday = false) then
            my deferInFolder("Video", 4, todayDate)
        end if
        
        log "COMPLETED Rebalancing"
        
    end tell
    
end tell

on dateISOFormat(theDate)
    set y to text -4 thru -1 of ("0000" & (year of theDate))
    set m to text -2 thru -1 of ("00" & ((month of theDate) as integer))
    set d to text -2 thru -1 of ("00" & (day of theDate))
    return y & "-" & m & "-" & d
end dateISOFormat

on getTextTask(ListItem)
    using terms from application "OmniFocus"
        set theContext to missingContextStr
        if (context of ListItem is not missing value) then
            set theContext to preStr & (name of context of ListItem) & sepStr
        end if
        set theAction to (name of ListItem)
        set theProject to ""
        if (containing project of ListItem is not missing value) then
            set theProject to (name of containing project of ListItem) & sepStr
        end if
        set deferDate to ""
        if (defer date of ListItem is not missing value) then
            set deferDate to sepStr & my dateISOFormat(defer date of ListItem)
        end if
        
        -- return theContext & theProject & theAction & deferDate --
        return theAction & deferDate --
    end using terms from
end getTextTask

on deferInProject(projectName, deferDays, todayDate)
    tell application "OmniFocus"
        tell front document
            set customProject to first flattened project where its name = projectName
            set customTasks to (flattened tasks of customProject where completed is false)
            repeat with t in customTasks
                log my logThis(t, todayDate + deferDays * days)
                set t's defer date to todayDate + deferDays * days
                return
            end repeat
        end tell
    end tell
end deferInProject

on deferInFolder(folderName, deferDays, todayDate)
    tell application "OmniFocus"
        tell front document
            set customFolder to first flattened folder where its name = folderName
            set customProjects to (flattened projects of customFolder)
            repeat with p in customProjects
                set customTasks to (flattened tasks of p where completed is false)
                repeat with t in customTasks
                    log my logThis(t, todayDate + deferDays * days)
                    set t's defer date to todayDate + deferDays * days
                    return
                end repeat
            end repeat
        end tell
    end tell
end deferInFolder

on logThis(ListItem, deferDate)
    set toLog to "Deferring " & my getTextTask(ListItem) & " to " & my dateISOFormat(deferDate) & return
    return toLog
end logThis

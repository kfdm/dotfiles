tell application "The Hit List"
	set roulette_list to my find_list("Roulette", groups in folders group)
	set roulette_task to some task of roulette_list
	set due date of roulette_task to current date
end tell

on find_list(list_name, list_group)
	repeat with i from 1 to number of items in list_group
		set theGroup to item i of list_group
		if name of theGroup = list_name then
			return theGroup
		end if
		set objClass to class of theGroup as text
		if objClass = "folder" then
			try
				set newGroups to groups of theGroup
				set result to my find_list(list_name, newGroups)
				if name of result = list_name then
					return result
				end if
			end try
		end if
	end repeat
	-- If we don't find anything, make sure we return null
	-- to break our loop
	return null
end find_list

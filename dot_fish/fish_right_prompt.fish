function fish_right_prompt
	set_color -o white
	date +"%H:%M:%S"
	echo -n " "
	if test (uname) = "Darwin"
		echo " "
	else
		echo " "
	end
end

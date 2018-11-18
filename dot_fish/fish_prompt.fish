function fish_prompt
	set error_code $status
	set git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
	set_color -o white
	if test $history[1] = "clear"
		echo -n ""
	else if test $history[1] = "celar"
		echo -n ""
	else if test $history[1] = "c"
		echo -n ""
	else
		echo ""
	end
	echo -n "╔ "
	if test $error_code -eq 0
		set_color -o green
		echo -n " "
	else
		set_color -o red
		echo -n " ("$error_code") "
	end
	if test ! $USER = "root"
		set_color -o green
	else
		set_color -o red
	end
	echo -n (whoami)
	set_color -o white
	echo -n " at "
	set_color -o yellow
	echo -n (hostname)
	set_color -o white
	echo -n " in "
	set_color -o purple
	if [ $git_branch ]
        echo -n (prompt_pwd)
	    set_color -o white
        echo -n " on "
        set_color -o green
	    echo " "$git_branch
    else
        echo (prompt_pwd)
    end
	set_color -o white
	echo -n "╚═"
	if test $USER = "root"
		set_color -o red
	else
		set_color -o green
	end
    echo -n " "
	set_color -o white
end

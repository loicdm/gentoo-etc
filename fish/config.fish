# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status is-interactive
#   ...
# end

if status is-interactive

	# Dracula Color Palette
	#
	# Foreground: f8f8f2
	# Selection: 44475a
	# Comment: 6272a4
	# Red: ff5555
	# Orange: ffb86c
	# Yellow: f1fa8c
	# Green: 50fa7b
	# Purple: bd93f9
	# Cyan: 8be9fd
	# Pink: ff79c6
	
	# Syntax Highlighting Colors
	set -g fish_color_normal f8f8f2
	set -g fish_color_command 8be9fd
	set -g fish_color_keyword ff79c6
	set -g fish_color_quote f1fa8c
	set -g fish_color_redirection f8f8f2
	set -g fish_color_end ffb86c
	set -g fish_color_error ff5555
	set -g fish_color_param bd93f9
	set -g fish_color_comment 6272a4
	set -g fish_color_selection --background=44475a
	set -g fish_color_search_match --background=44475a
	set -g fish_color_operator 50fa7b
	set -g fish_color_escape ff79c6
	set -g fish_color_autosuggestion 6272a4
	set -g fish_color_cancel ff5555 --reverse
	set -g fish_color_option ffb86c
	set -g fish_color_history_current --bold
	set -g fish_color_status ff5555
	set -g fish_color_valid_path --underline
	
	# Default Prompt Colors
	set -g fish_color_cwd 50fa7b
	set -g fish_color_cwd_root red
	set -g fish_color_host bd93f9
	set -g fish_color_host_remote bd93f9
	set -g fish_color_user 8be9fd
	
	# Completion Pager Colors
	set -g fish_pager_color_progress 6272a4
	set -g fish_pager_color_background
	set -g fish_pager_color_prefix 8be9fd
	set -g fish_pager_color_completion f8f8f2
	set -g fish_pager_color_description 6272a4
	set -g fish_pager_color_selected_background --background=44475a
	set -g fish_pager_color_selected_prefix 8be9fd
	set -g fish_pager_color_selected_completion f8f8f2
	set -g fish_pager_color_selected_description 6272a4
	set -g fish_pager_color_secondary_background
	set -g fish_pager_color_secondary_prefix 8be9fd
	set -g fish_pager_color_secondary_completion f8f8f2
	set -g fish_pager_color_secondary_description 6272a4

        # Désactive le greeting
        set -g fish_greeting   
                               
        # Bitwarden SSH Agent socket
        set --export --global SSH_AUTH_SOCK "/home/$USER/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"  
        # Charge le thème Dracula
        alias ls "eza --icons --group-directories-first --git -@ --git-repos --header --group --created --modified"
        alias ll "ls -l"
        alias la "ls -al"
	
	if not set -q STARSHIP_CONFIG
    		set -gx STARSHIP_CONFIG /etc/starship.toml
	end

	function fish_command_not_found
   		/usr/bin/command-not-found $argv
	end
        
	starship init fish | source
end


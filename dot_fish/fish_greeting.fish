function fish_greeting
    echo "yes" | history clear > /dev/null # clears last session's history
    set PATH ~/.bin $PATH # adding .bin in my homefolder to $PATH
    # my preferred terminal editor is micro 
    export VISUAL=micro
    export EDITOR=micro
    
    alias fucking="sudo" # if i forget to write sudo
    alias su="su -" # if I type su I want a login shell
    alias niggaplease="sudo !!" # lol
    # Because I'm too often too stupid to write clear
    alias celar="clear"
    alias c="clear"
    # smart shortcuts
    alias edit="$VISUAL"
    alias e="$VISUAL"
    alias de="cd ~/Desktop"
    
    set_color -o cyan
    echo "Starting session for "$USER" on "(hostname)"..."
    echo ""
    set_color -o yellow
    echo "System Information:"
    neofetch --off --disable shell resolution de wm packages title term term_font underline cols line_break
    set_color -o cyan
    echo "Welcome "$USER", I'm ready for your commands..."
end

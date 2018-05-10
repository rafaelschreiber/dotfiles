function fish_greeting
    echo "yes" | history clear > /dev/null
    set PATH ~/.bin $PATH
    set VISUAL (which micro)
    set EDITOR (which micro)
    alias fucking="sudo"
    alias su="su -"
    alias edit="$VISUAL"    

    set_color -o cyan
    echo "Starting session for "$USER" on "(hostname)"..."
    echo ""
    set_color -o yellow
    echo "System Information:"
    neofetch --off --disable shell resolution de wm packages title term term_font underline cols line_break
    set_color -o cyan
    echo ""
    echo "Welcome "$USER", I'm ready for your commands..."
end

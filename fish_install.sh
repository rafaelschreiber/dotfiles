#!/usr/bin/env bash
mv $HOME/.config/fish/functions/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish.bak 2>/dev/null
mv $HOME/.config/fish/functions/fish_right_prompt.fish $HOME/.config/fish/functions/fish_right_prompt.fish.bak 2>/dev/null
mv $HOME/.config/fish/functions/fish_greeting.fish $HOME/.config/fish/functions/fish_greeting.fish.bak 2>/dev/null
mv $HOME/.config/fish/functions/sudo.fish $HOME/.config/fish/functions/sudo.fish.bak 2>/dev/null
mv $HOME/.config/fish/fish_variables $HOME/.config/fish/fish_variables.bak 2>/dev/null

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir -p $HOME/.config/fish/functions

cp $SCRIPTPATH/dot_fish/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish
cp $SCRIPTPATH/dot_fish/fish_right_prompt.fish $HOME/.config/fish/functions/fish_right_prompt.fish
cp $SCRIPTPATH/dot_fish/fish_greeting.fish $HOME/.config/fish/functions/fish_greeting.fish
cp $SCRIPTPATH/dot_fish/sudo.fish $HOME/.config/fish/functions/sudo.fish
cp $SCRIPTPATH/dot_fish/fish_variables $HOME/.config/fish/fish_variables

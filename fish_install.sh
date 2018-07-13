#!/usr/bin/env bash
echo "If errors occur, you can just ignore them"
sleep 1
mv $HOME/.config/fish/functions/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish.bak
mv $HOME/.config/fish/functions/fish_right_prompt.fish $HOME/.config/fish/functions/fish_right_prompt.fish.bak
mv $HOME/.config/fish/functions/fish_greeting.fish $HOME/.config/fish/functions/fish_greeting.fish.bak
mv $HOME/.config/fish/functions/sudo.fish $HOME/.config/fish/functions/sudo.fish.bak

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir -p $HOME/.config/fish/functions

cp $SCRIPTPATH/dot_fish/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish
cp $SCRIPTPATH/dot_fish/fish_right_prompt.fish $HOME/.config/fish/functions/fish_right_prompt.fish
cp $SCRIPTPATH/dot_fish/fish_greeting.fish $HOME/.config/fish/functions/fish_greeting.fish
cp $SCRIPTPATH/dot_fish/sudo.fish $HOME/.config/fish/functions/sudo.fish

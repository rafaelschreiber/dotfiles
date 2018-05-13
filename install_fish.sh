#!/usr/bin/env bash
rm $HOME/.config/fish/functions/fish_prompt.fish
rm $HOME/.config/fish/functions/fish_right_prompt.fish
rm $HOME/.config/fish/functions/fish_greeting.fish

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir $HOME/.config/fish/functions

cp $SCRIPTPATH/fish/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish
cp $SCRIPTPATH/fish/fish_right_prompt.fish $HOME/.config/fish/functions/fish_right_prompt.fish
cp $SCRIPTPATH/fish/fish_greeting.fish $HOME/.config/fish/functions/fish_greeting.fish

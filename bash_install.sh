#!/usr/bin/env bash
echo "If errors occur, you can just ignore them"
sleep 1
mv $HOME/.bashrc $HOME/.bashrc.bak
mv $HOME/.bash_profile $HOME/.bash_profile.bak
mv $HOME/.bash_logout $HOME/.bash_logout.bak

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

cp $SCRIPTPATH/dot_bash/bashrc $HOME/.bashrc
cp $SCRIPTPATH/dot_bash/bash_profile $HOME/.bash_profile
cp $SCRIPTPATH/dot_bash/bash_logout $HOME/.bash_logout


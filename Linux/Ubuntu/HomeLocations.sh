#!/bin/bash

CONFIG_FILE="$HOME/.config/user-dirs.dirs"

DESKTOP="/mnt/d/pc/Desktop"
DOWNLOADS="/mnt/d/pc/Downloads"
PICTURES="/mnt/d/pc/Pictures"

PROJECTS="/mnt/d/Projects"
MEGA="/mnt/d/MEGA"

cp $CONFIG_FILE $CONFIG_FILE.old

sed -i "s/\$HOME\/Desktop/${DESKTOP//\//\\/}/g" $CONFIG_FILE
sed -i "s/\$HOME\/Downloads/${DOWNLOADS//\//\\/}/g" $CONFIG_FILE
sed -i "s/\$HOME\/Pictures/${PICTURES//\//\\/}/g" $CONFIG_FILE

rm -r $HOME/Desktop && ln -s $DESKTOP $HOME/Desktop
rm -r $HOME/Downloads && ln -s $DOWNLOADS $HOME/Downloads
rm -r $HOME/Pictures && ln -s $PICTURES $HOME/Pictures

ln -s $PROJECTS $HOME/Projects
ln -s $MEGA $HOME/MEGA

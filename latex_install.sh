#! /usr/bin/bash

sudo pacman -Syu

sudo pacman -S --noconfirm texlive-most
sudo pacman -S --noconfirm pydflatex 
sudo pacman -S --noconfirm biber
sudo pacman -S --noconfirm kbibtex 
sudo pacman -S --noconfirm kile
sudo pacman -S --noconfirm ttf-ms-fonts

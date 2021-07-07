#! /usr/bin/bash

sudo pacman -Syu

sudo pacman -S --noconfirm texlive-bin
sudo pacman -S --noconfirm texlive-core
sudo pacman -S --noconfirm texlive-langcyrillic
sudo pacman -S --noconfirm texlive-publishers
sudo pacman -S --noconfirm pydflatex
sudo pacman -S --noconfirm kile
sudo pacman -S --noconfirm biber
sudo pacman -S --noconfirm texlive-bibtexextra
sudo pacman -S --noconfirm texlive-fontsextra
sudo pacman -S --noconfirm kbibtex

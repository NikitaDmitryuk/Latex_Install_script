#! /usr/bin/bash

sudo pacman -Syu

sudo pacman -S --noconfirm texlive-bin texlive-core texlive-langcyrillic texlive-publishers texlive-bibtexextra texlive-fontsextra texlive-latexextra texlive-most ttf-ms-fonts
sudo pacman -S --noconfirm pydflatex biber kbibtex
sudo pacman -S --noconfirm kile

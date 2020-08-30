#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo -e "\nINSTALLING AUR SOFTWARE\n"

cd "${HOME}"

echo "CLONING: YAY"
git clone "https://aur.archlinux.org/yay.git"


PKGS=(

    # UTILITIES -----------------------------------------------------------

    'i3lock-fancy'              # Screen locker
    
    # MEDIA ---------------------------------------------------------------

    'screenkey'                 # Screencast your keypresses
    'lbry-app-bin'              # LBRY Linux Application

    # COMMUNICATIONS ------------------------------------------------------

    'google-chrome-dev'         # Brave
    

    # THEMES --------------------------------------------------------------

    'lightdm-webkit-theme-aether-git'   # Lightdm Login Theme - https://github.com/NoiSek/Aether#installation
    'materia-gtk-theme'             # Desktop Theme
    'papirus-icon-theme'            # Desktop Icons
    'capitaine-cursors'             # Cursor Themes
)


cd ${HOME}/yay
makepkg -si

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

echo -e "\nDone!\n"

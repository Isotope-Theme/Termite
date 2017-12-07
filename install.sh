#!/usr/bin/env bash

printf "Light or Dark variant [dark]: "
read var

if [[ $var == "" ]]; then
    var="dark"
fi

if [[ -e "$HOME/.config/termite/config" ]]; then
    if [[ $var == "dark" ]]; then
        cat ./config_dark >> ~/.config/termite/config
    else
        cat ./config_light >> ~/.config/termite/config
    fi
else
    if [[ $var == "dark" ]]; then
        eval "cp ./config_dark ~/.config/termite/config"
    else
        eval "cp ./config_light ~/.config/termite/config"
    fi
fi

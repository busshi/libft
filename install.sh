#!/bin/bash

PATH_LIBFT="./"

error=0

green="\033[0;32m"
red="\033[0;31m"
orange="\033[0;33m"
clear="\033[0m"

OK="[ ${green}ok${clear} ] done!"
KO="[ ${red}KO${clear} ]"

check()
{
[[ $? -eq 0 ]] && echo -e "${OK}" || { echo -e "${KO}"; error=$(( $error + 1 )); }
}


### LIBFT COMPILATION
echo -e "${orange}[+] Compilying libft${clear}"
make -C ${PATH_LIBFT}
check


### COPYING LIBRARY
LIB="/usr/local/lib"
echo -e "\n${orange}[+] Copying libft.a in ${LIB}${clear}"
[ ! -d "$LIB" ] && sudo mkdir "$LIB"
sudo cp ${PATH_LIBFT}libft.a "$LIB"
check


### COPYING HEADER
INC="/usr/local/include"
echo -e "\n${orange}[+] Copying libft.h in ${INC}${clear}"
[ ! -d "$INC" ] && sudo mkdir "$INC"
sudo cp ${PATH_LIBFT}libft.h "$INC"
check


### CLEANING
echo -e "\n${orange}[+] Cleaning libft${clear}"
make -C ${PATH_LIBFT} fclean
check


[[ $error -eq 0 ]] && echo -e "\n${green}>>> Installation completed <<<${clear}" || echo -e "\n${red}>>> Installation failed! <<<${clear}"
echo ""

exit 0

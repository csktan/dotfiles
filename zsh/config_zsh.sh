#!/bin/bash

# "* =====================================================================================*/
# "*       Filename:  zsh
# "*
# "*    Description:  
# "*
# "*        Version:  1.0
# "*        Created:  29/08/23 14:23:36
# "*
# "*         Author: csktan
# "*   Organization:  
# "*
# "* =====================================================================================*/

zsh_install_check= sh -c "command zsh --version"
    if [ -n "$zsh_install_check" ]; then 
        echo "Please install zsh first with command: apt install zsh"
        exit
    else
        echo "Downloading Plugins"
    fi 
plugins=("zsh-autosuggestions")
TOT=${#plugins[@]}
for(( i=0 ; i<$TOT; i ++)); 
do  
    plugin="${plugins[i]}"
    name=$(echo $dir | rev | cut -d '/' -f 1 | rev)
if [ -d "$HOME/.oh-my-zsh/" ]; then
        echo "repo" $plugin "already exist!!!"
    else 
        repo=https://github.com/${plugins[i]}.git 
        git clone $repo  $HOME/.oh-my-zsh/plugins/
    fi
done
cp zshrc $HOME/.zshrc 


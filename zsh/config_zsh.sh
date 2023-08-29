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

vim_install_check= sh -c "command zsh --version"
    if [ -n "$vim_install_check" ]; then 
        echo "Please install zsh first with command: apt install zsh"
        exit
    else
        echo "Downloading Plugins"
    fi 
plugins=("VundleVim/Vundle.vim" "flazz/vim-colorschemes" "ycm-core/YouCompleteMe" "easymotion/vim-easymotion" "michaeljsmith/vim-indent-object" "maralla/validator.vim" "vim-scripts/c.vim" "vim-airline/vim-airline" "vim-airline/vim-airline-themes" "airblade/vim-gitgutter" "kien/ctrlp.vim" "jceb/vim-orgmode") 
TOT=${#plugins[@]}
for(( i=0 ; i<$TOT; i ++)); 
do  
    dir="${plugins[i]}"
    name=$(echo $dir | rev | cut -d '/' -f 1 | rev)
if [ -d "$HOME/.vim/bundle/$name" ]; then
        echo "repo" $dir "already exist!!!"
    else 
        repo=https://github.com/${plugins[i]}.git 
        git clone $repo  $HOME/.vim/bundle/$name 
    fi
done
cp vimrc $HOME/.vimrc 


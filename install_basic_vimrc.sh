#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cp -r peaksea/ ~/.vim_runtime/sources_forked/

cd ~/.vim_runtime
cat ~/.vim_runtime/vimrcs/basic.vim > ~/.vimrc

echo "Installed the Basic Vim configuration successfully! Enjoy :-)"

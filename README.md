# vim-bundle

## Installation Guide

1. Copy .vimrc file and .vim folder to your user's folder
run cp .vimrc ~/
run cp .vim ~/

2. Enter vim:
run vim

3. On vim, install plugins:
run :PluginInstall

4. Create folder mvim folder
run sudo mkdir /usr/local/bin/mvim

5. Copy mvim to mvim folder
run cp mvim /usr/local/bin/mvim/

6. Create a symlink:
run cd /usr/local/bin/mvim/
and then run ln -s /usr/local/bin/mvim vim

7. Install Node.js and npm
Enter https://docs.npmjs.com/getting-started/installing-node and follow the steps

8. Compile YouCompleteMe
run cd ~/.vim/bundle/YouCompleteMe
and then run ./install.py --tern-completer

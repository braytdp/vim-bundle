# vim-bundle

## Installation Guide

1. **Copy .vimrc file and .vim folder to your user's folder**
```{r, engine='bash', count_lines}
cp .vimrc ~/
```
```{r, engine='bash', count_lines}
cp .vim ~/
```


2. **Enter vim:**
```{r, engine='bash', count_lines}
vim
```

3. **On vim, install plugins:**
```{r, engine='bash', count_lines}
:PluginInstall
```

4. **Create folder mvim folder**
```{r, engine='bash', count_lines}
sudo mkdir /usr/local/bin/mvim
```

5. **Copy mvim to mvim folder**
```{r, engine='bash', count_lines}
cp mvim /usr/local/bin/mvim/
```

6. **Create a symlink:**
```{r, engine='bash', count_lines}
cd /usr/local/bin/mvim/
```
```{r, engine='bash', count_lines}
ln -s /usr/local/bin/mvim vim
```

7. **Install Node.js and npm**

Enter https://docs.npmjs.com/getting-started/installing-node and follow the steps

8. **Compile YouCompleteMe**
```{r, engine='bash', count_lines}
cd ~/.vim/bundle/YouCompleteMe
```
```{r, engine='bash', count_lines}
./install.py --tern-completer
```

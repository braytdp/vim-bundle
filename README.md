# vim-bundle

## Installation Guide

- **Copy .vimrc file and .vim folder**
```{r, engine='bash', count_lines}
cp .vimrc ~/
```
```{r, engine='bash', count_lines}
cp .vim ~/
```


- **Enter vim:**
```{r, engine='bash', count_lines}
vim
```

- **On vim, install plugins:**
```{r, engine='bash', count_lines}
:PluginInstall
```

- **Create folder mvim folder**
```{r, engine='bash', count_lines}
sudo mkdir /usr/local/bin/mvim
```

- **Copy mvim to mvim folder**
```{r, engine='bash', count_lines}
cp mvim /usr/local/bin/mvim/
```

- **Create a symlink:**
```{r, engine='bash', count_lines}
cd /usr/local/bin/mvim/
```
```{r, engine='bash', count_lines}
ln -s /usr/local/bin/mvim vim
```

- **Install Node.js and npm**

  - Enter https://docs.npmjs.com/getting-started/installing-node and follow the steps

- **Compile YouCompleteMe**
```{r, engine='bash', count_lines}
cd ~/.vim/bundle/YouCompleteMe
```
```{r, engine='bash', count_lines}
./install.py --tern-completer
```

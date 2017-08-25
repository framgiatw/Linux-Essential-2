# Framgia Training Workshop - Linux Essential 2
## Homework answer (Group 1)

### Homework 1  
#### Question: "Why can a normal user change his/her password without root permission?"  
#### Answer: Because the passwd command in installed setuid root:
- Check permission of passwd command
```
$ ls -l /usr/bin/passwd
-rwsr-xr-x 1 root root 41284 Sep 12  2012 /usr/bin/passwd
```
- The flag s(SUID) in the fourth position. This is a flag that can be set in the file permissions that tells Linux to assume the privileges of the user that owns the executable when it is run - in this case, root.

### Homework 2
```
sudo groupadd framgia
sudo chgrp framgia ~/shared_directory/
sudo chmod g+s ~/shared_directory/
umask 007 ; mkdir a_new_directory ; umask 117
```
### Homework 3
#### Display line numbers
`
set number
`
#### Add support for Elixir language  
- Plugin managers

The most common plugin managers include [vim-plug][vim-plug],
[NeoBundle][neobundle], [Vundle][vundle] and [pathogen.vim][pathogen].

With pathogen.vim, just clone this repository inside `~/.vim/bundle`:

`bash
git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir
`

With the other plugin managers, just follow the instructions on the homepage of
each plugin. In general, you have to add a line to your `~/.vimrc`:

```viml
" vim-plug
Plug 'elixir-lang/vim-elixir'
" NeoBundle
NeoBundle 'elixir-lang/vim-elixir'
" Vundle
Plugin 'elixir-lang/vim-elixir'
```

- Manual installation

Copy the contents of each directory in the respective directories inside
`~/.vim`.
#### set default list of file encoding: `utf-8`, `shift-js`, `sjis`, other encoding.
`set fileencodings=utf-8,shift-js,sjis`
#### Disable arrow keys
```
noremap <Up> <Nop> 
noremap <Down> <Nop> 
noremap <Left> <Nop> 
noremap <Right> <Nop> 
```

#### Replace tab with 4 spaces
```
set tabstop=4
set shiftwidth=4
set expandtab
```

### Homework 4
```
ssh-keygen -t rsa -C "" dev_rsa
Host dev
    HostName 128.45.53.123
    Port 2222
    User user_name
       IdentityFile ~/.ssh/dev_rsa.key
```
### Homework 5
no answer 

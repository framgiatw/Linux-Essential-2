# Framgia Training Workshop - Linux Essential 2
## Homework answer (Group 5)

### Homework 1
The first, let's look at the permissions of the passwd command:
Run `ls -l $(which passwd)`, result:
`-rwsr-xr-x 1 root root 54256 Th05 16 09:28 /usr/bin/passwd`

In permission of `passwd` command has `s` flag in 4th position, this is `setuid` (set-user identification) permission.
This means, when user run command `passwd`, a process that runs this file is granted access based on the owner of the file (is user `root`).

### Homework 2
`sudo groupadd framgia`
`sudo chgrp framgia /path/to/shared_directory`
`sudo chmod g+s /path/to/shared_directory`
`umask u=rwx,g=rwx,o=`

### Homework 3
Display line numbers.
`set number`

Add support for Elixir language. You can use sample file included in this repo for testing.
    Plugin managers
        Step 1:`git clone https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir`
        Step 2: With the other plugin managers, just follow the instructions on the homepage of each plugin. 
        In general, you have to add a line to your ~/.vimrc:
        ```
        " vim-plug
        Plug 'elixir-lang/vim-elixir'
        " NeoBundle
        NeoBundle 'elixir-lang/vim-elixir'
        " Vundle
        Plugin 'elixir-lang/vim-elixir'
        ```

    Manual installation
        Copy the contents of each directory in the respective directories inside ~/.vim.

Set default list of file encoding: utf-8, shift-js, sjis, other encoding.
    `set fileencodings=utf-8,shift-js,sjis`

Disable arrow keys.
    ```
    noremap <Up> <Nop> 
    noremap <Down> <Nop> 
    noremap <Left> <Nop> 
    noremap <Right> <Nop> 
    ```

Replace tab with 4 spaces
    `set tabstop=4 set shiftwidth=4 set expandtab`

### Homework 4
    `ssh-keygen -t rsa -C "" dev_rsa`
    `vim ~/.ssh/config`
    Add ssh config this text
    ```
    Host dev
        HostName 128.45.53.123
        Port 2222
        IdentityFile ~/.ssh/dev_rsa
        User username
    ```

### Homework 5

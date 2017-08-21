# Framgia Training Workshop - Linux Essential 2
## Homework answer (Group 4)

### Homework 1
Question: "Why can a normal user change his/her password without root permission?"  
Answer: When run `ls -l $(which passwd)`, output is:  
`-rwsr-xr-x 1 root root 54256 Th05 17 06:37 /usr/bin/passwd` -> `755`  
In permission of `passwd` command has `s` flag in 4th position, this make the command run as owner instead of user run it.  
So any user run this command, it always run as root user (it's owner).  
Finally, normal user can run `passwd` command, but root user will update password database.

### Homework 2
```
# Apply for shared directory
# Default owner for new file and directory is creator.
chgrp framgia /path/to/shared_directory # Change group to framgia
chmod g+s /path/to/shared_directory # New created file and directory has group is framgia (from command above)
umask u=rwx,g=rwx,o= # New file will create with permission 660 and directory is 770

```

### Homework 3
```
" Display line numbers
set number

" Set file encodings
set fileencodings=utf-8,shift-js,sjis

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Replace tab with 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
```

Add support for Elixir language  
Step 1: Clone vim-elixir repo:
```
git clone https://github.com/elixir-lang/vim-elixir.git
```
Step 2: Install  
- Step 2.1: With pathogen plugin manager, copy `vim-elixir` folder to ~/.vim/bundle  
- Step 2.2: Manual install, copy contents of each directory in the respective directories inside ~/.vim

### Homework 4
Create public-private key file name dev_rsa
```
ssh-keygen -N '' -f dev_rsa -t rsa
```
- -N '': no passphrase
- -f dev_rsa: create two file output: dev_rsa for private, dev_rsa.pub for public
- -t rsa: key type is rsa

Write ssh config file
File ~/.ssh/config
```
Host dev
    HostName 128.45.53.123
    Port 2222
    # Replace with location of private key file
    IdentityFile ~/.ssh/dev_rsa
    # Replace with real username on server
    User username
```

### Homework 5
File create_acc.sh

```
#!/bin/bash

function show_help() {
  echo "Usage: sudo create_acc.sh {username} {password} {path/to/pubkey_file}"
  exit 1
}

if [ "$#" -ne 3 ]; then
  echo "Number of arguments is invalid!!!"
  show_help
fi

if [ ! -f $3 ] || [ ! -r $3 ]; then
  echo "$3 is invalid file."
  show_help
fi

if [ $UID -ne 0 ]; then
  echo "Please run this script as root or sudo command"
  show_help
fi

sudo useradd -m -p $(openssl passwd -1 $2) -g admin $1
sudo mkdir -p /home/$1/.ssh
sudo cat $3 >> /home/$1/.ssh/authorized_keys
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chown -R $1 /home/$1/.ssh
exit 0
```

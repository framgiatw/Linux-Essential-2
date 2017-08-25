Homework 1
Questions: "Why can a normal user change his/her password without root permission?"
Answers:
  run `ls -la | grep "passwd"` in /usr/bin
    output: -rwsr-xr-x  1 root root       54256 Th05 17 06:37 passwd
'passwd' in permissions for owner file have 's', normal user when run passwd become the file's owner.

Homework 2
make directory : sharing-directory
chgrp framgia [path_to_directory]
chmod g+s [path_to_directory]
umask u=rwx,g=rwx,o=

Homework 3
Display line numbers
set number

set file encodings
set fileencodings=utf-8, shift-js, sjis,..

disable arrow keys
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

Replace tab with 4 spaces
set tabstop=4 shiftwidth=4 expandtab

add support Elixir language
1. clone repo
git clone https://github.com/elixir-lang/vim-elixir.git
2. Install
  - With the other plugin managers, just follow the instructions on the homepage of each plugin. In general, you have to add a line to your ~/.vimrc
  - Copy the contents of each directory in the respective directories inside ~/.vim.

Homework 4
Create public-private key file name dev_rsa
  ssh-keygen -t rsa -N '' -f dev_rsa
  Generating public/private rsa key pair.
  Your identification has been saved in dev_rsa.
  Your public key has been saved in dev_rsa.pub.

Host dev
     HostName 128.45.53.123
     User UserName
     Port 2222
     IdentityFile ~/.ssh/dev_rsa

run ssh dev

Homework 5

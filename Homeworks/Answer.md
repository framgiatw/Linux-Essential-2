# homework 1
  `$ ls -l 'which passwd'`  
  `-rwsr-xr-x 1 root root 54256 พ.ค.  17 06:37 /usr/bin/passwd`  
  //passwd được cài đặt setuid('s' trong quyền trên), nên nó chạy như owner của tệp chứ không phải user gọi nó.  
  //do đó khi dùng passwd , setuid khiến cho chương trình có quyền root nên có quyền wr với tệp /etc/shadow  
# homework 2
  `$ mkdir sharing-directory`  
  `$ groupadd framgia`  
  `$ sudo chgrp framgia sharing-directory` //chuyển group thành framgia  
  `$ chmod o= sharing-dicrectory` // cài lại quyền other user  
  `$ sudo chmod g+s sharing-directory` //các tệp và thư mục con tạo ra sẽ kế thừa id group của thư mục cha, không ảnh hưởng đến owner ID  

# homework 3
### display line number:
* set number  
* set num  
### add support elixir language:
* clone vim-elixir: `git clone https://github.com/elixir-editors/vim-elixir`
* Copy the contents of each directory in the respective directories inside ~/.vim.  
### set file encodings:
* set fileencodings=utf-8,shift-js,sjis  
### disable arrow keys:
* noremap <Up> <Nop>  
* noremap <Down> <Nop>  
* noremap <Left> <Nop>  
* noremap <Right> <Nop>  
### replace tab with 4 spaces:
* set tabstop=4  
* set shiftwidth=4  
* set expandtab   

# homework 4
* create public-private key, named it dev_rsa:  
`ssh-keygen -N '' -f dev_rsa -t rsa`  

* File `~/.ssh/config`  
```
Host dev  
  HostName `128.45.53.123`  
  Port 2222  
  IdentityFile ~/.ssh/dev_rsa`
  User username  
```
# homework 5
`file: home_work_5.sh`

#!/bin/bash

echo "Username: $1";
echo "Password: $2";
echo "Path: $3";

#check author
if [ $UID -ne 0 ]; then
  echo "Please run this script as root or sudo command"
fi

#add Account
useradd $1 -p $2;

#change group
usermod -a -G vmt $1;

#check folder exist
if [[ !(-d ~/.ssh) ]]; then
  mkdir ~/.ssh;
fi

#check file authorized_keys exist
if [[ !(-d ~/.ssh/authorized_keys) ]]; then
  #create file authorized_keys
  touch ~/.ssh/authorized_keys;
  #change permission
  chmod 700 ~/.ssh/authorized_keys;
fi

#append pubkey
cat $3 >> ~/.ssh/authorized_keys;

echo "Done!";

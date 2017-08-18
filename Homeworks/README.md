# Homeworks

## Guide

- Each group MUST create a Pull Request to this repo, with a file named `Answer.md` inside this `Homeworks` directory.
- Set the Pull Request name as your Group name. For example: `Group 1`
- Write out your Group's members and other notices in the Pull Request description.
- Write out steps and commands that you made to complete each homework in the answer file.

## Homework 1
This is a question about the `passwd` command.
`passwd` is the command to modify a user's password. It will change the content in `etc/shadow` file.

However, when you check the file permission of `etc/shadow`, you will receive the following result:
```
$ ls -la /etc/shadow
-rw-r----- 1 root shadow 954 Mar 27 08:25 /etc/shadow
```
The `etc/shadow` file belongs to `root` user, and it is only writable to `root` user. Normal user does not even have the read permission.

So the question is: **"Why can a normal user change his/her password without `root` permission?"**

## Homework 2
Alice and Bob are working in the same team, and they are both a member of Group `framgia` in the system.
They want to create, share, and manage their documents in the same directory.
They want that when they create a file or a directory, it MUST follow the following rules:
- The new file and directory MUST belong to the user who created it
- The new file and directory MUST belong to the group `framgia`
- The new file MUST have the `rw-` and new directory MUST have `rwx` permission to both owner and `framgia` group. It will give no permission to other.

For example, when Alice, with the username `alice`, creates a new file or directory, it should look like this:
```
/sharing-directory $ touch a_new_file
/sharing-directory $ ls -la a_new_file
-rw-rw---- 1 alice framgia 0 Aug 18 15:41 test
/sharing-directory $ mkdir a_new_directory
/sharing-directory $ ls -la a_new_directory
drwxrwx---    2 alice framgia   4096 Aug 18 15:41 a_new_directory
```
How can they do that?

## Homework 3

Write your own `vimrc` that include at least following features (please write steps you made to achieve final result)
- Display line numbers.
- Add support for Elixir language. You can use sample file included in this repo for testing.
- set default list of file encoding: `utf-8`, `shift-js`, `sjis`, other encoding.
-  Disable arrow keys.
- Replace tab with 4 spaces.

## Homework 4

Let's you're given a development server at IP address: `128.45.53.123`, ssh server run on port `2222`.
- Write out command to generate pair public-private key, named it `dev_rsa`
- Write your own `config` file for ssh that allow you to ssh to above server with `dev_rsa` identify file, by only one command: `ssh dev`

## Homework 5

Write a script, named it `create_acc.sh` that:
- Take 3 parameter: `{username}`, `{password}`, `{path/to/pubkey_file}`
- When run, ex: `sudo create_acc.sh tienna admin123456 dev_rsa.pub`, script will
  - Create new user `tienna` with password `admin123456`
  - Add user `tienna` to group `admin`
  - Append `dev_rsa.pub` to `authorized_keys` in `.ssh` directory
  - Set correct file's permissions
  - (Script should create `.ssh` directory or `authorized_keys` if they don't exist)

# Homeworks

## Guide

- Each group MUST create a Pull Request to this repo, with a file named `Answer.md` inside this `Homeworks` folder.
- Set the Pull Request name as your Group name. For example: `Group 1`
- Write out your Group's members and other notices in the Pull Request description.
- Write out steps and commands that you made to complete each homework in the answer file.

## Homework 1

Write your own `vimrc` that include at least following features (please write steps you made to achieve final result)
- Display line numbers.
- Add support for Elixir language. You can use sample file included in this repo for testing.
- set default list of file encoding: `utf-8`, `shift-js`, `sjis`, other encoding.
-  Disable arrow keys.
- Replace tab with 4 spaces.

## Homework 2

Let's you're given a development server at IP address: `128.45.53.123`, ssh server run on port `2222`.
- Write out command to generate pair public-private key, named it `dev_rsa`
- Write your own `config` file for ssh that allow you to ssh to above server with `dev_rsa` identify file, by only one command: `ssh dev`

## Homework 3

Write a script, named it `create_acc.sh` that:
- Take 3 parameter: `{username}`, `{password}`, `{path/to/pubkey_file}`
- When run, ex: `sudo create_acc.sh tienna admin123456 dev_rsa.pub`, script will
  - Create new user `tienna` with password `admin123456`
  - Add user `tienna` to group `admin`
  - Append `dev_rsa.pub` to `authorized_keys` in `.ssh` folder
  - Set correct file's permissions
  - (Script should create `.ssh` folders or `authorized_keys` if they don't exist)

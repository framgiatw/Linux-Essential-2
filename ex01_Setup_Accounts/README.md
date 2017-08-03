# Exercise 01 Setup Accounts

## Guide

- Each team pick a team leader.
- Each team pick a order of team members to do the exercise. For example: member A -> member B -> ... -> member D

## Step 1: Disable SSH by password

- Team leader get `root` account info from trainers.
- Change `root` password.
- SSH to server and disable SSH by password.

## Step 2: Create new account
- Use root account to add account for next member (ex: member A)
- Ensure that member A can login by his public key.
    - Login with member A's account.
    - Create new `.ssh` folder.
    - Create new `authorized_keys` file, and append member A's public key.
    - Set correct file's permissions.
    - Add new member to group `admin` (so he can use `sudo` command from now on).

## Step 3: Create accounts for other members
- Member A create account for next member.
- Repeat until last member. He will create account for team leader

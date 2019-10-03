# bash-cmd-shortcuts
A list of simplified aliases and functions for the most commonly used bash commands.

Use the command shortcuts and get the work done super fast. Think how cool it will be if you could just clear your terminal by just typing "gs"(2 letters) and not "git status"(10 letters) everytime.

This is the repository of shortcuts for the frequently used commands of different programs.
It includes,
1. basic bash commands
2. git commands
3. npm commands

Feel free to add the shortcuts for other commands. Just make sure to not overwrite the existing bash commands or aliases. 

## Full list of shortcuts

The full list of aliases or shortcuts is in [.custom_cmds.sh](.custom_cmds.sh) file. Refer this when using the shortcuts.

**Note:** This is just **another** way of accessing the commands. You can still use the actual long commands too. 

## Who can use this?

If you are a **command line savvy** and never close your terminal, this is for you! This is going to make your life super easy and fast. A great time saver!

If you just use the terminal to **execute certain commands** on a regular basis, this is for you too! You can just use the shortcuts for those commands and get the job done in less than half the time it used to take.

This is not recommended for beginners. Say if you are new to git commands, it is still recommended to use the full commands to understand how it works. But still you can use the shortcuts for the other commands that you use repeatedly everyday.

## How to add it to my terminal

Download the repository and run the following commands.
```
chmod +x concatenate_and_use_shortcuts.sh
./concatenate_and_use_shortcuts.sh
source ~/.custom_cmds.sh
```
**chmod +x concatenate_and_use_shortcuts.sh** -- This is to give the execute permission to the script file. No need to run for subsequent execution.

**./concatenate_and_use_shortcuts.sh** -- ./ will execute the concatenate_and_use_shortcuts script file.

**source ~/.custom_cmds.sh** -- This is to use the shortcuts in the current terminal window. Alternatively you can close and open a new terminal to use the shortcuts.

Try "c" for clear, "e" to exit,..

**Note:** Running this will replace the existing .custom_cmds.sh if you already have one.

## How to know the shortcuts for the commands

Check [.custom_cmds.sh](.custom_cmds.sh) and get to know the shortcuts for the commands you use often. 

"alias" is used to define shortcuts. The below line creates an alias for "cd ..". Now you can just use "b" to go back a directory.
```
alias b="cd .."
```

## How to import and use only certain shortcuts 

##### delete .sh file
If you do not want shortcuts for certain programs delete those *_cmds.sh files from the **commands** directory. 

##### change .sh file
If you want to change certain shortcuts for your own personal use, change them in *_cmds.sh file in the **commands** directory.

Once you are done, **execute concatenate_and_use_shortcuts.sh** file. You can check **.custom_cmds.sh** file in your workspace for the final list of shortcuts.

**Note:** This will **replace the existing shortcuts file(.custom_cmds.sh)** with the new set of shortcuts. 

## How to add (contribute) new command shortcuts for others to use

1. **Add** a new .sh file (for a new program, say python-> create python_cmds.sh) / **Change** the *_cmds_.sh file (for already existing program, say git-> edit git_cmds.sh)
2. Once you are done, **Execute** concatenate_and_use_shortcuts.sh using the following command
```
./concatenate_and_use_shortcuts.sh
```
3. Now you have to close and open a new terminal window to use the new and changed shortcuts.
4. **Test**. Make sure all the existing and the new command shortcuts work. 
5. If you have added shortcuts for a new program, then add it to the supported list in the README.md file.
6. Create a pull request.

Here is a [quick post](https://dev.to/bhuvanaguna/git-process-and-commands-to-know-to-contribute-to-an-open-source-project-l2f) on the commands and the steps to follow to contribute to an open source project.

**Note: Don't change the existing aliases. Make sure the aliases you have added doesn't overwrite the exisitng bash commands or aliases.**

## What does **concatenate_and_use_shortcuts.sh** do?

This file basically concatenates shortcuts from all *_cmds.file and makes them into one file(.custom_cmds.sh), so that it's enough to just source that single file of shortcuts during every terminal start up.

1. It concatenates the shortcuts from all the *_cmds.sh files in the **commands** directory into a new file, **.custom_cmds.sh**. It overwrites the existing content in the .custom_cmds.sh file.
2. It copies the .custom_cmds.sh file to your home directory (~). If already exists, it overwrites.
3. It checks if the .custom_cmds.sh file is sourced inside .bashrc file. If not it adds "source ~/.custom_cmds.sh" line to .bashrc file.
4. sources .custom_cmds.sh file in the current terminal.

Check [this](TO-DO) blog for detailed technical details on why each step is done.

## Run this to concatenate all the *_cmds.sh files in commands directory and use it in the terminal.

echo "Concatenating all the shortcuts into .custom_cmds.sh file..."
# emptying the existing file
cp /dev/null .custom_cmds.sh
for f in commands/*_cmds.sh; do (cat "${f}"; echo && echo ) >> .custom_cmds.sh; done 
# Copy .custom_cmds.sh to the home directory.
cp .custom_cmds.sh ~

#### To access shortcuts even after closing the current terminal, add it to .bashrc

# Check if .custom_cmds.sh is already added in .bashrc
echo "Checking if shortcuts file is in .bashrc..."
if ! grep "source ~/.custom_cmds.sh" ~/.bashrc  > /dev/null
then
   # Source it inside .bashrc file to access the commands across all the terminal sessions.
    echo -e "#Adding Custom Commands. \nsource ~/.custom_cmds.sh" >> ~/.bashrc
    echo "Added shortcuts to .bashrc to use them on every new terminal window."
else
     #.custom_cmds.sh is already sourced inside the .bashrc file.
     echo "Shortcuts file is already in the .bashrc file."
fi
 
echo -e "\nYou are all set! \nEither close and reopen the terminal window or execute 'source ~/.custom_cmds.sh' to use the shortcuts."

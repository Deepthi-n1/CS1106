#Create a new folder 
mkdir Shell-Backup

#Copying all the .sh files 
cp *.sh Shell-Backup

#using tar command to compress the folder
tar -cf Shell-Backup.tar Shell-Backup

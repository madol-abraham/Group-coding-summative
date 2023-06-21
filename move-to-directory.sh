#!/usr/bin/env bash
#This script creates a shell script to automatically move all 4 files

# Create the directory with the name negpod_id-q1
directory_name="negpod_id-q1"
mkdir "$directory_name"

# Move the four files to the directory
mv main.sh "$directory_name"
mv students-list_0333.txt "$directory_name"
mv Select-emails.sh "$directory_name"
mv student-emails.txt "$directory_name"

# Create the backup script
backup_script_name="backup-Negpod_ID.sh"
echo "#!/usr/bin/env bash" > "$backup_script_name"
echo "#This script creates a shell script to back up the directory created in Question 2, and to a remote server computer" > "$backup_script_name"
echo "HOST='a0dfc11ba139.a982e858.alu-cod.online'" >> "$backup_script_name"
echo "USER='a0dfc11ba139'" >> "$backup_script_name"
echo "PASSWORD='899c79fc532cd0591af1'" >> "$backup_script_name"
echo "LOCATION='/home/sftp-student/03033/summative'" >> "$backup_script_name"
echo "" >> "$backup_script_name"
echo "rsync -avz --progress $directory_name/ \$USER@\$HOST:\$LOCATION" >> "$backup_script_name"

# Make the backup script executable
chmod u+x "$backup_script_name"

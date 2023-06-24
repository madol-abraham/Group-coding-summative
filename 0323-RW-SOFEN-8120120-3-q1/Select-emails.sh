#/usr/bin/bash
#This script creates a command to select just the emails of the student and saves the output in “student-emails.txt” file.

students_file="students-list_0333.txt"
output_file="student-emails.txt"

awk '{print $1}' "$students_file" > "$output_file"

echo "Emails extracted and saved to $output_file."

#/usr/bin/bash

students_file="students-list_0333.txt"
output_file="student-emails.txt"

awk '{print $1}' "$students_file" > "$output_file"

echo "Emails extracted and saved to $output_file."


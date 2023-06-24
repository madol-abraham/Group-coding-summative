#!/usr/bin/env bash
#This script builds an application that will take user input and build the Bachelor of Software Engineering cohort list of students

students_file="students-list_0333.txt"

while true; do
  echo "----------------------------"
  echo "Welcome to the Student Management System"
  echo "Please choose an option:"
  echo "1. Create a student record"
  echo "2. View all students"
  echo "3. Delete a student"
  echo "4. Update a student record"
  echo "5. Exit"

  read -p "Enter your choice: " choice
  case $choice in
    1)
      read -p "Enter student email: " email
      read -p "Enter student age: " age
      read -p "Enter student ID: " student_id
      echo "$email $age $student_id" >> "$students_file"
      echo "Student record created."
      ;;
    2)
      echo "Students List:"
      cat "$students_file"
      ;;
    3)
      read -p "Enter student ID to delete: " delete_id
      sed -i "/\b$delete_id\b/d" "$students_file"
      echo "Student record deleted."
      ;;
    4)
      read -p "Enter student ID to update: " update_id
      read -p "Enter updated email: " updated_email
      read -p "Enter updated age: " updated_age
      sed -i "/\b$update_id\b/c\\$updated_email $updated_age $update_id" "$students_file"
      echo "Student record updated."
      ;;
    5)
      echo "Exiting..."
      exit 0
      ;;
    *)
      echo "Invalid choice. Please try again."
      ;;
  esac
done


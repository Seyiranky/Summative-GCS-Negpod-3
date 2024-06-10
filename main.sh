i#!/bin/bash

FILE="students-list_1023.txt"

# Function to display the menu
show_menu() {
    echo "1. Add a student"
    echo "2. View all students"
    echo "3. Delete a student"
    echo "4. Update a student"
    echo "5. Exit"
    read -p "Choose an option: " choice
}

# Function to add a student
add_student() {
    read -p "Enter student email: " email
    read -p "Enter student age: " age
    read -p "Enter student ID: " id
    echo "$id,$email,$age" >> $FILE
    echo "Student added!"
}

# Function to view all students
view_students() {
    echo "Student List:"
    cat $FILE
}

# Function to delete a student
delete_student() {
    read -p "Enter student ID to delete: " id
    grep -v "^$id," $FILE > temp.txt && mv temp.txt $FILE
    echo "Student deleted!"
}

# Function to update a student
update_student() {
    read -p "Enter student ID to update: " id
    grep -v "^$id," $FILE > temp.txt






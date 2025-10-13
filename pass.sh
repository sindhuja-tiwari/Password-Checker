#!/bin/bash

check_password_strength() {
    password=$1

    if [ ${#password} -lt 8 ]; then
        echo "Password is too short. Must be at least 8 characters long."
        return 1
    fi

    echo "$password" | grep -q '[A-Z]'
    if [ $? -ne 0 ]; then
        echo "Password must contain at least one uppercase letter."
        return 1
    fi

    echo "$password" | grep -q '[a-z]'
    if [ $? -ne 0 ]; then
        echo "Password must contain at least one lowercase letter."
        return 1
    fi

    echo "$password" | grep -q '[0-9]'
    if [ $? -ne 0 ]; then
        echo "Password must contain at least one digit."
        return 1
    fi

    # Updated special character check using -E and escaped characters
    echo "$password" | grep -qE '[\@\#\$\%\^\&\+\=\!]'
    if [ $? -ne 0 ]; then
        echo "Password must contain at least one special character (@#$%^&+=!)."
        return 1
    fi

    echo "Password is strong."
    return 0
}

read -p "Enter a password to check: " password
check_password_strength "$password"
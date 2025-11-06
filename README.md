# Password Strength Checker - Unix Shell Script

## Overview

This repository contains a Shell script (`pass_unix.sh`) that checks the strength of a user-provided password based on several commonly recommended criteria. The script assesses the password using regular expressions and assigns a score out of 100, providing feedback on how to improve the password if it does not meet certain standards.

## Features

- **Interactive:** Prompts the user for a password via terminal input.
- **Criteria Checks:**
  - Minimum length (8 characters)
  - At least one number
  - At least one uppercase letter
  - At least one lowercase letter
  - At least one special character (`@, #, $, %, ^, &, *, !, ?, _`)
- **Scoring:**
  - Each criterion met adds 20 points to the strength score, up to a maximum of 100.
- **Feedback:**
  - Details weaknesses for unmet criteria.
  - Logs results and feedback to `tracker.txt` for audit and review.
- **Password Evaluation:**
  - Strong (100)
  - Moderate (60-99)
  - Weak (<60)

## Usage

1. **Clone the repository:**
    ```sh
    git clone https://github.com/sindhuja-tiwari/Password-Checker.git
    cd Password-Checker
    ```

2. **Run the script:**
    ```sh
    bash pass_unix.sh
    ```

3. **Follow the prompt:**
   - Enter your password when prompted.
   - Review the feedback in the console and `tracker.txt`.

## Example Output

```
Enter your password:
 
----------------------------------------
Password check at: [timestamp]
Weak: Password must contain at least one uppercase letter.
Weak: Password must contain at least one special character (@, #, $, %, ^, &, *, !, ?, _).

Your password: mypassword1
Password Strength Score: 60 / 100
Moderate password
----------------------------------------
```

## File Details

- **pass_unix.sh**: Main script for checking password strength.
- **tracker.txt**: Output file where password strength assessments are logged.

## Requirements

- Unix-like OS (Linux, macOS, etc.)
- Bash shell


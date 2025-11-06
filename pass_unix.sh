#!/bin/bash

output_file="tracker.txt"
read -p "Enter your password: " password
echo

score=0

log() {
    echo "$1" | tee -a $output_file
}

log "----------------------------------------"
log "Password check at: $(date)"

if [ ${#password} -ge 8 ]; then
  score=$((score + 20))
else
  log "Weak: Password must be at least 8 characters long."
fi

if [[ $password =~ [0-9] ]]; then
  score=$((score + 20))
else
  log "Weak: Password must contain at least one number."
fi

if [[ $password =~ [A-Z] ]]; then
  score=$((score + 20))
else
  log "Weak: Password must contain at least one uppercase letter."
fi

if [[ $password =~ [a-z] ]]; then
  score=$((score + 20))
else
  log "Weak: Password must contain at least one lowercase letter."
fi

if [[ $password =~ [\@\#\$\%\^\&\*\!\?\_] ]]; then
  score=$((score + 20))
else
  log "Weak: Password must contain at least one special character (@, #, $, %, ^, &, *, !, ?, _)."
fi

log ""
log "Your password: $password"
log "Password Strength Score: $score / 100"

if [ $score -eq 100 ]; then
  log "Strong password "
elif [ $score -ge 60 ]; then
  log "Moderate password "
else
  log "Weak password "
fi
log "----------------------------------------"
log ""

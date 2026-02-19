If you find yourself running out of memory on ecocast's RStudio server, check to see who to blame with this script...

```sh
# !/bin/sh

# Initialize the total memory usage variable
total_mem=0     

ps --no-headers -eo user,%mem| sort -k1 > memory.txt

# Print column headers
printf "%-10s%-10s\n" User MemUsage'(%)'

# Loop through the sorted output of ps and calculate the memory usage per user
while read u m
do
    # Check if we're on a new user and print the total memory usage for the previous user
    [[ $old_user != $u ]] && { printf "%-10s%-0.1f\n" $old_user $total_mem; total_mem=0; }

    # Add the memory usage of the current process to the total memory usage
    total_mem="$(echo $m + $total_mem | bc)"    

    # Save the current user for the next iteration
    old_user=$u

# Read the output of ps, sort it by user, and loop through it
done < memory.txt

rm memory.txt

```


Save it to your home directory as `memeroy_per_user.sh`, and call with `sh memory_per_user.sh`

#!/bin/bash
echo "Setgid files"
echo "=============="
# command to find and list the files according to the permission sorted with type and date
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 4

# echo command to display the title
# for 10 largest files
echo "Listing 10 Largest Files"
echo "=========================="
# using the find command, listing files by their sizes
find / -type f -exec ls -l --block-size=MB {} + 2>/dev/null | sort -k5 -hr |head -n 10 | awk '{print $3,$5,$9}' 
echo ""

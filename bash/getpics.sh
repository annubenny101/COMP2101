#!/bin/bash
#
# this script puts some picture files into a Pictures directory in our home directory
# it does some error testing
# it summarizes the Pictures directory when it is done
#

# Task 1: Improve this script to also retrieve and install the files kept in the https://zonzorp.net/pics.tgz tarfile
#   - use the same kind of testing that is already in the script to only download the tarfile if you don't already have it and  to make sure the download and extraction commands work, then delete the local copy of the tarfile if the extraction was successful

# make a Pictures directory if we don't have one - assumes we have a home directory
# made a pictuers directory using mkdir command
test -d ~/Pictures || mkdir ~/Pictures

# downloaded a tarfile of pictures to my Pictures directory.
test -f ~/Pictures/pics.tgz || wget -q -O ~/Pictures/pics.tgz http://zonzorp.net/pics.tgz

# unpacked the downloaded tarfile, then deleted the local copy of the tarfile
test -f ~/Pictures/pics.tgz &&  tar -xvf ~/Pictures/pics.tgz && rm ~/Pictures/pics.tgz

# Make a report on what we have in the Pictures directory

echo "REPORT"
echo "We have a directory called Pictures in our home directory"

test -d ~/Pictures && cat <<EOF
There are currently $(find ~/Pictures -type f|wc -l) files in the Pictures directory.
The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk.
EOF

#!/bin/sh

# Find a non-existing filename for the private key
fileprefix="${HOME}/.ssh/id_"
i=0
while [[ -e ${fileprefix}${i} ]] ; do
    let i++
done
file="${fileprefix}${i}"

# Put the key in the file and make it read-only
echo "$1" > ${file}
chmod 600 ${file}

# Make SSH aware of the private key
echo -e "\tIdentityFile ${file}" >> ~/.ssh/config
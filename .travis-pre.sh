#!/bin/bash
# get a list of all the submodules
submodules=($(git config --file .gitmodules --get-regexp url | awk '{ print $2 }'))

# loop over submodules and clone manually using travis
for submodule in "${submodules[@]}"
do
    command="git clone https://$submodule"
    command=${command/git@/$CI_TOKEN@}
    command=${command/github.com:/github.com/}
    ${command} 1>&2 #hide from output log
done

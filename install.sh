#!/bin/sh

# list of element to symlink
simple_symlink="vim vimrc bash_profile bashrc gdbinit gitconfig signature urxvt\
                i3 Xresources"

# backup folder to avoir overiding existing items
mkdir -p "backup/"

# apply simlink from file to ~/.file, backup if override
for file in $simple_symlink; do
    echo ""
    # Let ~ expand, no need for " since for loop split spaces
    home_file_path=~/.$file
    file="$(pwd)/$file"

    # Check file existance
    [ ! -e "$file" ] && echo "SRC file '$file' does not exist. Skipping..."\
                     && continue

    # Check source existance
    if [ -e "$home_file_path" ]; then
        echo "DST file $home_file_path exists.";
        if [ -L "$home_file_path" ]; then
            echo "File is symbolic link. Deleting..."
            rm "$home_file_path"
        else
            echo "Backing Up to backup/ ..."
            cp -r "$home_file_path" "backup/."
            mv "$home_file_path" "$home_file_path.bkp"
        fi
    fi

    # Create Symlink
    echo "Created symbolic link from $home_file_path to $file"
    ln -s "$file" "$home_file_path"
done

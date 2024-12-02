#!/usr/bin/env bash

# dotfiles directory
dotfiledir="${HOME}/.config/dotfiles"

# list of files/folders to symlink in ${homedir}
files=(profile bashrc bash_profile bash_prompt aliases private)

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd "${dotfiledir}" || exit

# create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
    echo "Creating symlink to $file in home directory."
    ln -sf "${dotfiledir}/.${file}" "${HOME}/.${file}"
done

echo "Trying to install pyenv"
curl https://pyenv.run | bash
echo "Trying to install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
echo "Installation Complete!"
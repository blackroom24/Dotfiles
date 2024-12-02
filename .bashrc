[[ $- != *i* ]] && return

# Load dotfiles:
for file in ~/.{profile,bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

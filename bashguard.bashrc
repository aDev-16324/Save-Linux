# Prevent recursive crash loops
if [[ "$BASHRC_GUARD" == "1" ]]; then
    return
fi
export BASHRC_GUARD=1

# === Clean dangerous recursion lines (optional) ===
sed -i '/\. ~\/\.bashrc/d' ~/.bashrc
sed -i '/^[[:space:]]*source ~\/\.bashrc/d' ~/.bashrc

# === Source the rest of your custom config ===
if [ -f ~/.bash_custom ]; then
    . ~/.bash_custom
fi

if [ -s ~/.bashrc ]; then
	cp ~/.bashrc ~/backup.sh
fi
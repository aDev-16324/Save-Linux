# declares the directories to point to
backup_file=~/backup.sh
target=~/.bashrc

# backup part
if [ -f "$backup_file" ]; then
    cp "$backup_file" "$target"
    echo "File ~/.bashrc is recovered"
else
    echo "Recovery failed: backup file not found"
fi
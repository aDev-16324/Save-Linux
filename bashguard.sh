cp ~/.bashrc ~/backup.sh
#That line backups the file just in case


sed -i '/\. ~\/\.bashrc/d' ~/.bashrc
sed -i '/^[[:space:]]*source ~\/\.bashrc/d' ~/.bashrc
#Those lines cleans out bad '. ~/.bashrc' or bad 'source ~/.bashrc'



if [ -s ~/.bashrc ]; then
	#This updates the backup after removing all bad stuff and the file is not an empty file
	cp ~/.bashrc ~/backup.sh
fi
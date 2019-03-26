#! /bin/bash

if ! command -v wine; then
	sudo apt install wine-stable -y
fi

zipped_file="$HOME/Downloads/Counter-Strike1.6Portable-SITECS.zip"
zipped_file_url="http://www.comoeconomizar.com.br/Counter-Strike1.6Portable-SITECS.zip"
file="$HOME/Downloads/Counter-Strike 1.6 Portable.exe"

if [ -f "$file" ]; then
	wine "$file"
	exit
fi

if [ ! -f "$zipped_file" ]; then
	wget "$zipped_file_url" -P "$HOME/Downloads/"
fi

if ! command -v unzip; then
	sudo apt install unzip -y
fi

unzip "$zipped_file"
wine "$file"
exit

#! /bin/bash

if ! command -v wine; then
	sudo apt install wine-stable -y
fi

zipped_file="/tmp/Counter-Strike1.6Portable-SITECS.zip"
zipped_file_url=$(curl --silent https://www.sitecs.net/counter-strike-1-6-portable | grep -o "http.*Counter-Strike1.6Portable-SITECS.zip")
file="/tmp/Counter-Strike 1.6 Portable.exe"

if [ -f "$file" ]; then
	wine "$file"
	exit
fi

if [ ! -f "$zipped_file" ]; then
	wget "$zipped_file_url" -P "/tmp/"
fi

if ! command -v unzip; then
	sudo apt install unzip -y
fi

unzip "$zipped_file" -d "/tmp/"
wine "$file"
exit

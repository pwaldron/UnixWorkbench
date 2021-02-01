all: README.md
	echo "# Unix Workbench" > README.md
	echo >> README.md
	echo -n "**make** was run on: " >> README.md
	date >> README.md
	echo >> README.md
	echo -n "**guessinggame.sh** contains " >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo " lines of code." >> README.md


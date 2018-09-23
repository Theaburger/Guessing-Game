all: README.md 

README.md:guessinggame.sh
	echo "##Guessing Game" > README.md
	echo "This file was made on: " >> README.md
	date >> README.md
	echo "The number of lines in guessinggame.sh is: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean: 
	rm README.md

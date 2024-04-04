build: binomial_coefficient.c
	gcc -o program binomial_coefficient.c

clean: delete-test
	rm -f program

delete-test:
	rm -f test.sh

download-test: 
	curl -o test.sh https://raw.githubusercontent.com/uofl-russell/auto_grader_test_files/main/recursive_functions/recursive_functions.sh

test: 
	bash test.sh

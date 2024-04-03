bc: binomial_coefficient.c
	gcc -o bc binomial_coefficient.c

clean:
	rm -f bc test.sh

download_test : bc
	rm -f test.sh
	curl -o test.sh https://raw.githubusercontent.com/uofl-russell/auto_grader_test_files/main/recursive_functions/recursive_functions.sh

test: clean download_test
	bash test.sh

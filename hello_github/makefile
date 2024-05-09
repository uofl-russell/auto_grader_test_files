clean:
	rm -f test.py
	rm -f test.sh

download-test: clean
	curl -o test.py https://raw.githubusercontent.com/uofl-russell/auto_grader_test_files/main/hello_github/test.py
	curl -o test.sh https://raw.githubusercontent.com/uofl-russell/auto_grader_test_files/main/hello_github/test.sh

test: download-test
	bash test.sh

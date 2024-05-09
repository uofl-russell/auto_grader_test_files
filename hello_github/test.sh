function test_output {


  output=$(python3 test.py)
  expected_output="Pass"

if [ "$output" == "$expected_output" ] ; then
    echo -e "\033[0;32m✔ Pass:\033[0m All QA tests have passed"
else
    echo -e "\033[0;31m✘ Fail:\033[0m QA test(s) failed"
    exit 1
fi
}

test_output

function test_output {
  num1=$1
  num2=$2
  expected_result=$3

  output=$(./program $num1 $num2)
  expected_output="There are $expected_result ways to choose $num2 items from a set of $num1 items."

if [ "$output" == "$expected_output" ] ; then
    echo -e "\033[0;32m✔ Pass:\033[0m The program computed the correct output for $num1 choose $num2."
else
    echo -e "\033[0;31m✘ Fail:\033[0m The program does not compute the correct output for $num1 choose $num2."
    exit 1
fi
}
 
# Test cases
test_output 25 12 5200300
test_output 22 13 497420
test_output -1 3 0
test_output 24 13 2496144
test_output 22 -2 0
test_output 8 29 0
test_output 26 8 1562275
test_output 4 0 1
test_output 23 23 1
test_output 13 4 715
test_output 0 6 0
test_output 21 12 293930
test_output 27 12 17383860
test_output 18 29 0
test_output 20 7 77520
test_output 4 7 0
test_output -2 3 0
test_output 25 -1 0
test_output 30 22 5852925
test_output 19 29 0
test_output 24 14 1961256
test_output 26 16 5311735
test_output 7 25 0
test_output 23 16 245157
test_output 20 4 4845
test_output 13 3 286
test_output 11 24 0
test_output 30 22 5852925
test_output 12 24 0
test_output 17 26 0
test_output 26 21 65780
test_output 9 14 0
test_output 20 6 38760
test_output 22 9 497420
test_output 13 29 0
test_output 5 29 0
test_output 18 22 0
test_output 13 24 0
test_output 14 0 1
test_output 28 6 376740
test_output 27 0 1
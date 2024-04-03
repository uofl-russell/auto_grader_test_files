#!/bin/bash

function test_output {
  num1=$1
  num2=$2
  expected_result=$3

  output=$(./bc $num1 $num2)
  expected_output="There are $expected_result ways to choose $num2 items from a set of $num1 items."

  if [ "$output" == "$expected_output" ] ; then
    echo "Pass: The program computed the correct output for $num1 choose $num2."
  else
    echo "Expected '$expected_output' but got: $output"
    exit 1
  fi
}

# Test cases
test_output 25 12 5200300
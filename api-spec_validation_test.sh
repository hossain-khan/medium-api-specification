#!/bin/sh

setUp()
{
  originalPath=$PATH
  PATH=$PWD:$PATH
  
  echo "Executing tests... ^_^"
}

testEquality() {
	echo "Testing swagger validation - current output is: $validationOutput"
	assertEquals $validationOutput "{}"
}

# Execute shunit2 to run the tests
. shunit2-2.1.6/src/shunit2
#!/bin/sh

setUp()
{
  originalPath=$PATH
  PATH=$PWD:$PATH
  
  echo "Executing tests... ^_^"
}

testEquality() {
	assertEquals 1 1
}

# Execute shunit2 to run the tests
. shunit2-2.1.6/src/shunit2
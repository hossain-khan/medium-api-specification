#!/bin/sh

setUp()
{
  originalPath=$PATH
  PATH=$PWD:$PATH
  

  echo "Validating ENV Variables: TRAVIS_BRANCH=$TRAVIS_BRANCH, PR=$PR, BRANCH=$BRANCH"
  echo "OpenAPI Specification File=$OPEN_API_SPEC_FILE"
  echo ""
  echo "Executing tests... ^_^"
}

testOpenApiSpecValidity() {
	validationOutput=$(curl http://online.swagger.io/validator/debug?url=http://petstore.swagger.io/v2/swagger.json)
	echo "Testing swagger validation - current output is: $validationOutput"
	assertEquals "Validation failed" "{}" "$validationOutput"
}

testFailCase() {
  assertEquals 1 99
}

# Execute shunit2 to run the tests (downloaded via `.travis.yaml`)
. shunit2-2.1.6/src/shunit2
#!/bin/sh

setUp()
{
  originalPath=$PATH
  PATH=$PWD:$PATH

  # Setup local variables to dynamically generate the API spec URL from pull request.
  githubRawResourceBaseUrl=https://raw.githubusercontent.com
  githubUsername=amardeshbd
  githubProjectId=medium-api-specification
  openApiSpecFileName=medium-api-specification.yaml
  

  
  echo "Executing tests... ^_^"
}


# Tests the swagger using online service
#
# DEV NOTE:
# ----------------
# Instead of comparing, string output, I had to calculate string size because if service
# gives error response, the unit test validation fails. See sample below
#
# Sample RESPONSE: {"schemaValidationMessages":[{"level":"error","message":"Can't read from file http://bla.bla.json"}]}
#
# shunit2:ERROR assertEquals() requires two or three arguments; 7 given
# shunit2:ERROR 1: Validation failed {} : {"schemaValidationMessages":[{"level":"error","message":"Can't 4: read
#
testOpenApiSpecValidity() {
    expectedOutput="{}"
    expectedOutputSize=${#expectedOutput} 
    specUrl="$githubRawResourceBaseUrl/$githubUsername/$githubProjectId/$BRANCH/$openApiSpecFileName"
    # Now prepare the open API spec file to use the online validator service.
    validationUrl="https://online.swagger.io/validator/debug?url=$specUrl"

    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
    echo "Validating ENV Variables: TRAVIS_BRANCH=$TRAVIS_BRANCH, PR=$PR, BRANCH=$BRANCH"
    echo "OpenAPI Specification File=$validationUrl"
    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"    

    validationOutput=$(curl -L $validationUrl)
    validationOutputSize=${#validationOutput}
    echo "Testing swagger validation - current output is: $validationOutput"
    echo "Expected valid size: $expectedOutputSize, current output: $validationOutputSize"
    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
    
    assertEquals "Validation failed - service unavailable or error found." $expectedOutputSize $validationOutputSize
}


# Execute shunit2 to run the tests (downloaded via `.travis.yaml`)
. shunit2-2.1.8/shunit2

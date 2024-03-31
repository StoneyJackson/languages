#!/usr/bin/env bats

setup() {
  LANGUAGE_ROOT="${BATS_TEST_DIRNAME}/../.."
  cd "${LANGUAGE_ROOT}"
  plccmk -c grammar > /dev/null
}

teardown() {
  rm -rf "./Java"
  cd ..
}

@test "V1 nested-ifs" {

  RESULT="$(rep -n < ./tests/nested-prims/V1.input)"

  expected_output=$(< "./tests/nested-prims/V1.expected")
  [[ "$RESULT" == "$expected_output" ]]

}

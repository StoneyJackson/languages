#!/usr/bin/env bats

setup() {
  cd OBJ
  plccmk -c grammar > /dev/null
}

teardown() {
  rm -rf "./Java"
  cd ..
}

@test "OBJ class" {

  RESULT="$(rep -n < ./tests/class/OBJ.input)"

  expected_output=$(< "./tests/class/OBJ.expected")
  [[ "$RESULT" == "$expected_output" ]]

}


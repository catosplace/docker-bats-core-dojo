@test "invoking run of a nonexistent file prints an error" {
  run nonexistent_filename
  [ "$status" -eq 127 ]
  [[ "$output" =~ 'nonexistent_filename: command not found' ]]
}
@test "docker ps works" {
  run docker ps
  [ "$status" -eq 0 ]
  [[ "$output" =~ 'CONTAINER ID' ]]
}
@test "docker hello world works" {
  run docker run hello-world
  [ "$status" -eq 0 ]
  [[ "$output" =~ 'Hello from Docker!' ]]
}

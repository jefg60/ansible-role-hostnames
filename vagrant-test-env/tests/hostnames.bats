#!/usr/bin/env bats
#

@test "root PROMPT_COMMAND var is set with hostname -f" {
    run sudo su - -c 'echo $PROMPT_COMMAND'
    [[ $output = *"hostname -f"* ]]
}

@test "user PROMPT_COMMAND var is set with hostname -f" {
    run echo $PROMPT_COMMAND
    [[ $output = *"hostname -f"* ]]
}

@test "root PROMPT_COMMAND contains red username" {
    run sudo su - -c 'echo $PROMPT_COMMAND'
    [[ "$output" = *"31m\]\u@"* ]]
}

@test "user PROMPT_COMMAND contains green username" {
    run echo $PROMPT_COMMAND
    [[ "$output" = *"32m\]\u@"* ]]
}

@test "hostname contains ansible inventory_hostname" {
    run hostname
    [[ "$output" = *"-hostnames" ]]
}

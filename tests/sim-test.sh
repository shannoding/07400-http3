#! /usr/bin/bash

PORT=7443

# valid endpoints are hello, small, large
ENDPOINT=${1:-"hello"} 

NUM_REPEATS=${2:-1}

# valid protocols are http3, http2, http1.1
PROTOCOL=${3:-"http3"}

sim_loop_exec=""

for (( i=1; i<=$NUM_REPEATS; i++ ))
do
    sim_loop_exec+="-v -o /dev/null https://localhost:$PORT/$ENDPOINT "
done

eval "/usr/local/bin/curl --$PROTOCOL -i -s -k $sim_loop_exec" 


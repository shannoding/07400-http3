#! /usr/bin/bash

PORT=7443

# valid endpoints are hello, small, large
ENDPOINT=${1:-"hello"} 

NUM_REPEATS=${2:-1}

# valid protocols are http3, http2, http1.1
PROTOCOL=${3:-"http3"}

for (( i=1; i<=$NUM_REPEATS; i++ ))
do
    /usr/local/bin/curl --$PROTOCOL -i -v -s -o /dev/null -k https://localhost:$PORT/$ENDPOINT
done

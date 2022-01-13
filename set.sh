#!/bin/bash


source functions.sh

consoleip="$(getconf consoleip)"
apitoken="$(getconf apitoken)"
apiversion="$(getconf apiversion)"


# example params: 1: 412 2: '8090' 3: 'eventTable' 4: 'mytable_202203
#cmd : ./set.sh 412 8090 eventTable mytable_202204
logsourceid="$1"
protoparamid="$2"
protoparamname="$3"
protoparamvalue="$4"
curl -S -X POST -H "SEC: $apitoken" -H 'Content-Type: application/json' -H 'Version: '$apiversion -H 'Accept: application/json' --data-binary '{  "protocol_parameters": [    {      "name": "'"$protoparamname"'",      "id": '"$protoparamid"',      "value": "'"$protoparamvalue"'"    }  ]}' 'https://'"$consoleip"'/api/config/event_sources/log_source_management/log_sources/'$logsourceid 2>/dev/null |jq




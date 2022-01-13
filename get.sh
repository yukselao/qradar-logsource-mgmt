#!/bin/bash


source functions.sh

consoleip="$(getconf consoleip)"
apitoken="$(getconf apitoken)"
apiversion="$(getconf apiversion)"

action="$1"

if [[ "$action" == "-action=get-proto-params" ]]; then
	curl -S -X GET -H 'Version: '"$apiversion" -H 'Accept: application/json' 'https://'"${consoleip}"'/api/config/event_sources/log_source_management/log_sources/412'  --header "SEC: $apitoken" 2>/dev/null |jq '.protocol_parameters[]  '
else
	curl -S -X GET -H 'Version: '"$apiversion" -H 'Accept: application/json' 'https://'"${consoleip}"'/api/config/event_sources/log_source_management/log_sources/412'  --header "SEC: $apitoken" 2>/dev/null
fi




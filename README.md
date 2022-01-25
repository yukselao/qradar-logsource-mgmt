# qradar-logsource-mgmt

```
Usage Logs:

[root@qradar log-soource-mgmt]# ./set.sh 412 8090 eventTable mytable_202205 &>/dev/null
[root@qradar log-soource-mgmt]# ./get.sh -action=get-proto-params |grep -A2 -i table
  "name": "eventTable",
  "id": 8090,
  "value": "mytable_202205"
}
{
[root@qradar log-soource-mgmt]# ./set.sh 412 8090 eventTable mytable_202207 &>/dev/null
[root@qradar log-soource-mgmt]# ./get.sh -action=get-proto-params |grep -A2 -i table
  "name": "eventTable",
  "id": 8090,
  "value": "mytable_202207"
}
```

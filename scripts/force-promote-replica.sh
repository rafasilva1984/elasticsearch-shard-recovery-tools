#!/bin/bash
curl -X POST "localhost:9200/_cluster/reroute" -H 'Content-Type: application/json' -d'
{
  "commands": [
    {
      "allocate_replica": {
        "index": "your-index",
        "shard": 0,
        "node": "target-node",
        "allow_primary": true
      }
    }
  ]
}'
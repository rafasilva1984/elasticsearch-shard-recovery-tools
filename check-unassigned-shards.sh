#!/bin/bash
curl -s "localhost:9200/_cat/shards" | grep UNASSIGNED
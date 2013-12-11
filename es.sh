#!/bin/sh
curl -XPUT "localhost:9200/_river/jamalmongo/_meta" -d '
{
  "type": "mongodb",
  "mongodb": { 
    "servers":
    [
      { "host": "mongovm.home", "port": 27017 }
    ],
    "options": { 
      "secondary_read_preference" : true,
      "ssl" : true,
	  "ssl_verify_certificate" : false,
	  "ssl_client_cert" : "/home/tron/client.p12"
    },
    "db": "test", 
    "collection": "foo", 
    "gridfs": false
  },
  "index": { 
    "name": "fooidx", 
    "type": "documents"
  }
}'

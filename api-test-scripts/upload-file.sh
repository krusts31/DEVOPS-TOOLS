#!/bin/sh
set -ex
curl -X POST -F "file=@$1" $2
#Example: curl -X POST -F file=@upload-file.sh http://localhost:3011/upload-file

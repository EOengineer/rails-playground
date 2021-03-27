#!/bin/bash
set -e
# remove a server.pid file that may exist
rm -f /myapp/tmp/pids/server.pid
# execute the container's main process (what's set as CMD in the Dockerfile)
exec "$@"

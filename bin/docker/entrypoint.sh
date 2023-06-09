#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /var/www/tmp/pids/server.pid
rm -f /var/www/log/*

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"

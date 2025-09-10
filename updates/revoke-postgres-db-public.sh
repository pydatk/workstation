#!/usr/bin/bash
set -e

# Revoke public access to the postgres database.

read -p "Change PostgreSQL locale (e.g. en_NZ.utf8 for New Zealand UTF8) [y,n]?" reply
if [ "$reply" == "y" ] || [ "$reply" == "Y" ]; then
    sudo -u postgres psql -c 'REVOKE connect ON DATABASE postgres FROM PUBLIC;'
fi
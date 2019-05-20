#!/usr/bin/env bash
# This will export the current database that is running in Docker
# it will be saved to the /sql folder
# This means next time you start docker you will update to this point in time

#remove the old
rm sql/LIVE_project.sql

# Backup
docker exec docker_db_1 /usr/bin/mysqldump -u root --password=undologic LIVE_project > sql/LIVE_project.sql
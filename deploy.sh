#!/bin/bash

echo "######### Setting ENV variables ###########"

export ADMIN_USER=admin \
ADMIN_PASSWORD=cueops \
SLACK_URL=https://hooks.slack.com/services/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 \
SLACK_CHANNEL=cueops \
SLACK_USER=cueops-notifications \
GF_ADMIN_USER=cueops \
GF_ADMIN_PASSWORD=cueops

echo "########## Deploying Stack File ##########"

docker stack deploy -c docker-compose-monitoring.yml monitoring

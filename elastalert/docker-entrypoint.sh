#!/bin/sh -e

cat /opt/rules/elastrules.error.yaml |\
    sed "s@#slack_webhook_url: <url>#@slack_webhook_url: '$SLACK_URL'@g" |\
    sed "s@#slack_channel_override: <channel>#@slack_channel_override: '#$SLACK_CHANNEL'@g" |\
    sed "s@#slack_username_override: <user>#@slack_username_override: '$SLACK_USER'@g" > /tmp/elastrules.error.yaml

mv /tmp/elastrules.error.yaml /opt/rules/elastrules.error.yaml

echo "Starting Elastalert..."
exec supervisord -c "${ELASTALERT_SUPERVISOR_CONF}" -n
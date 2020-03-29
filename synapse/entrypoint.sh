#!/bin/sh
source /venv/bin/activate

test -f config.yaml || python3 -m synapse.app.homeserver \
    --server-name ${SYNAPSE_SERVER_NAME:-localhost} \
    --config-path config.yaml \
    --generate-config \
    --report-stats=${SYNAPSE_REPORT_STATS:-no} && \
    sed -i s/bind_addresses:\ \\[.*\\]/bind_addresses:\ \\[\'127.0.0.1\'\\]/g config.yaml

synctl --no-daemonize start config.yaml

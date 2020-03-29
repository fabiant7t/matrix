# matrix-synapse

Alpine based Docker image for matrix synapse, the "open network for secure, decentralized communication"

## Disclaimer
This is not a maintained repo and it is not ready for production use. It's rather a playground to experiment with open communication infrastructure during the COVID-19 lockdown.

## Settings
The following environment variables configure your synapse home server:

- `SYNAPSE_SERVER_NAME`: Your domain pointing to your server, like matrix.topfstedt.com (default: localhost)
- `SYNAPSE_REPORT_STATS`: Whether or not to send stats to matrix.org (default is `no`, opt in with `yes`)

## Docker images
Docker image builds are available at https://quay.io/topfstedt/matrix-synapse

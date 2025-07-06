#!/bin/bash

# Tor hidden service
hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}/hostname"
export APP_KANARI_HIDDEN_SERVICE="$(cat "${hidden_service_file}" 2>/dev/null || echo "")"

# electrs is a required dependency, so it will always be available
export APP_KANARI_ELECTRUM_URL="tcp://$APP_ELECTRS_NODE_IP:$APP_ELECTRS_NODE_PORT"
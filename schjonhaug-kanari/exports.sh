#!/bin/bash

# App-specific environment variables
export APP_KANARI_IP="10.21.21.50"
export APP_KANARI_PORT="3000"
export APP_KANARI_BACKEND_IP="10.21.21.51"

# Tor hidden service
hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}/hostname"
export APP_KANARI_HIDDEN_SERVICE="$(cat "${hidden_service_file}" 2>/dev/null || echo "")"

# electrs is a required dependency, so it will always be available
export APP_ELECTRS_NODE_IP="10.21.21.8"
export APP_ELECTRS_NODE_PORT="50001"
export APP_KANARI_ELECTRUM_URL="tcp://10.21.21.8:50001"
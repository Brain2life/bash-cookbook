#!/usr/bin/env bash
# Author: Maxat Akbanov
# Description: This script calculates the thumbprint of GitHub OIDC Provider.
# For more information, see:
# https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc_verify-thumbprint.html

set -euo pipefail

# -----------------------------------------------------------------------------
# Calculate SHA1 thumbprint for an OIDC provider's TLS chain
# Default issuer: https://token.actions.githubusercontent.com
# -----------------------------------------------------------------------------

# Default OIDC issuer
DEFAULT_ISSUER="https://token.actions.githubusercontent.com"
ISSUER="${1:-$DEFAULT_ISSUER}"

echo "Using OIDC issuer: $ISSUER" >&2

# Extract the host dynamically from the OIDC discovery document
HOST=$(curl -fsSL "${ISSUER}/.well-known/openid-configuration" \
  | jq -r '.jwks_uri | split("/")[2]')

if [[ -z "$HOST" || "$HOST" == "null" ]]; then
  echo "❌ Failed to extract host from $ISSUER" >&2
  exit 1
fi

echo "🌐 Connecting to host: $HOST:443" >&2

# Fetch the certificate chain and calculate the SHA1 thumbprint of the top CA
echo | openssl s_client -servername "$HOST" -showcerts -connect "$HOST:443" 2>/dev/null \
  | sed -n -e '/BEGIN/h' -e '/BEGIN/,/END/H' -e '$x' -e '$p' | tail +2 \
  | openssl x509 -fingerprint -noout \
  | sed -e "s/.*=//" -e "s/://g" \
  | tr "ABCDEF" "abcdef"

#!/bin/bash
set -e

# Variables obtenidas desde la configuración de Home Assistant
BOT_TOKEN=$(bashio::config 'bot_token')
MSG_AFFILIATE_LINK_MODIFIED=$(bashio::config 'msg_affiliate_link_modified')
MSG_REPLY_PROVIDED_BY_USER=$(bashio::config 'msg_reply_provided_by_user')
EXCLUDED_USERS=$(bashio::config 'excluded_users')
LOG_LEVEL=$(bashio::config 'log_level')
AMAZON_AFFILIATE_ID=$(bashio::config 'amazon_affiliate_id')
ALIEXPRESS_APP_KEY=$(bashio::config 'aliexpress_app_key')
ALIEXPRESS_APP_SECRET=$(bashio::config 'aliexpress_app_secret')
ALIEXPRESS_TRACKING_ID=$(bashio::config 'aliexpress_tracking_id')
MSG_ALIEXPRESS_DISCOUNT=$(bashio::config 'msg_aliexpress_discount')
ALIEXPRESS_DISCOUNT_CODES=$(bashio::config 'aliexpress_discount_codes')
AWIN_PUBLISHER_ID=$(bashio::config 'awin_publisher_id')
AWIN_ADVERTISERS=$(bashio::config 'awin_advertisers')
ADMITAD_PUBLISHER_ID=$(bashio::config 'admitad_publisher_id')
ADMITAD_ADVERTISERS=$(bashio::config 'admitad_advertisers')

# Crear el archivo de configuración del bot
cat <<EOF > /app/data/config.yaml
telegram:
  bot_token: "$BOT_TOKEN"
  delete_messages: True
  excluded_users:
    - $(echo $EXCLUDED_USERS | sed 's/,/\n    - /g')

messages:
  affiliate_link_modified: "$MSG_AFFILIATE_LINK_MODIFIED"
  reply_provided_by_user: "$MSG_REPLY_PROVIDED_BY_USER"

amazon:
  affiliate_id: "$AMAZON_AFFILIATE_ID"

awin:
  publisher_id: "$AWIN_PUBLISHER_ID"
  advertisers:
    $(echo $AWIN_ADVERTISERS | sed 's/,/\n    /g')

admitad:
  publisher_id: "$ADMITAD_PUBLISHER_ID"
  advertisers:
    $(echo $ADMITAD_ADVERTISERS | sed 's/,/\n    /g')

aliexpress:
  app_key: "$ALIEXPRESS_APP_KEY"
  app_secret: "$ALIEXPRESS_APP_SECRET"
  tracking_id: "$ALIEXPRESS_TRACKING_ID"
  discount_codes: |
    $ALIEXPRESS_DISCOUNT_CODES

log_level: "$LOG_LEVEL"
EOF

# Ejecutar el bot
python3 /app/botaffiumeiro.py

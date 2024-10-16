#!/bin/bash

# Crear el archivo .env con las variables de entorno desde la configuración del complemento
echo "BOT_TOKEN=\"${bot_token}\"" > /botaffiumeiro/data/.env
echo "EXCLUDED_USERS=\"${excluded_users}\"" >> /botaffiumeiro/data/.env
echo "LOG_LEVEL=\"${log_level}\"" >> /botaffiumeiro/data/.env
echo "AMAZON_AFFILIATE_ID=\"${amazon_affiliate_id}\"" >> /botaffiumeiro/data/.env
echo "AWIN_PUBLISHER_ID=\"${awin_publisher_id}\"" >> /botaffiumeiro/data/.env
echo "AWIN_ADVERTISERS=\"${awin_advertisers}\"" >> /botaffiumeiro/data/.env
echo "ADMITAD_PUBLISHER_ID=\"${admitad_publisher_id}\"" >> /botaffiumeiro/data/.env
echo "ADMITAD_ADVERTISERS=\"${admitad_advertisers}\"" >> /botaffiumeiro/data/.env
echo "ALIEXPRESS_APP_KEY=\"${aliexpress_app_key}\"" >> /botaffiumeiro/data/.env
echo "ALIEXPRESS_APP_SECRET=\"${aliexpress_app_secret}\"" >> /botaffiumeiro/data/.env
echo "ALIEXPRESS_TRACKING_ID=\"${aliexpress_tracking_id}\"" >> /botaffiumeiro/data/.env
echo -e "ALIEXPRESS_DISCOUNT_CODES=\"${aliexpress_discount_codes}\"" >> /botaffiumeiro/data/.env

# Mensajes personalizados
echo "MSG_AFFILIATE_LINK_MODIFIED=\"${msg_affiliate_link_modified}\"" >> /botaffiumeiro/data/.env
echo "MSG_REPLY_PROVIDED_BY_USER=\"${msg_reply_provided_by_user}\"" >> /botaffiumeiro/data/.env
echo "MSG_ALIEXPRESS_DISCOUNT=\"${msg_aliexpress_discount}\"" >> /botaffiumeiro/data/.env

# Ejecutar el bot
python3 /botaffiumeiro/botaffiumeiro.py


#!/bin/bash

# Ruta del archivo YAML
CONFIG_FILE="/botaffiumeiro/data/config.yaml"

# Actualizando valores en config.yaml
echo "Actualizando valores en $CONFIG_FILE..."

# Telegram settings
sed -i "s|bot_token:.*|bot_token: \"$BOT_TOKEN\"|" $CONFIG_FILE
sed -i "s|delete_messages:.*|delete_messages: $DELETE_MESSAGES|" $CONFIG_FILE

# Amazon settings
sed -i "s|affiliate_id:.*|affiliate_id: \"$AMAZON_AFFILIATE_ID\"|" $CONFIG_FILE

# Awin settings
sed -i "s|publisher_id:.*|publisher_id: \"$AWIN_PUBLISHER_ID\"|" $CONFIG_FILE

# Admitad settings
sed -i "s|publisher_id:.*|publisher_id: \"$ADMITAD_PUBLISHER_ID\"|" $CONFIG_FILE

# AliExpress settings
sed -i "s|app_key:.*|app_key: \"$ALIEXPRESS_APP_KEY\"|" $CONFIG_FILE
sed -i "s|app_secret:.*|app_secret: \"$ALIEXPRESS_APP_SECRET\"|" $CONFIG_FILE
sed -i "s|tracking_id:.*|tracking_id: \"$ALIEXPRESS_TRACKING_ID\"|" $CONFIG_FILE

echo "Valores actualizados en $CONFIG_FILE:"
cat $CONFIG_FILE

# Iniciar la aplicación
echo "Iniciando la aplicación..."
python3 /botaffiumeiro/botaffiumeiro.py


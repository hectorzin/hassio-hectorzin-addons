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

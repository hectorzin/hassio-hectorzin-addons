import json
import yaml

# Rutas de archivos
json_file = "/data/options.json"  # Cambia la ruta al archivo JSON
yaml_file = "/botaffiumeiro/data/config.yaml"  # Cambia la ruta para el archivo YAML de salida

# Cargar el archivo JSON
with open(json_file, 'r') as f:
    data = json.load(f)

# Convertir el JSON en la estructura de YAML deseada
config = {
    "telegram": {
        "bot_token": data.get("bot_token", ""),
        "delete_messages": data.get("delete_messages", True),
        "excluded_users": [user.get("id") for user in data.get("excluded_users", [])]
    },
    "messages": {
        "affiliate_link_modified": data.get("msg_affiliate_link_modified", "Here is the modified link with our affiliate program:"),
        "reply_provided_by_user": data.get("msg_reply_provided_by_user", "Reply provided by")
    },
    "amazon": {
        "affiliate_id": data.get("amazon_affiliate_id", "botaffiumeiro_cofee-21")
    },
    "awin": {
        "publisher_id": data.get("awin_publisher_id", ""),
        "advertisers": {
            advertiser["domain"]: advertiser["id"] for advertiser in data.get("awin_adversiters", [])
        }
    },
    "admitad": {
        "publisher_id": data.get("admitad_publisher_id", ""),
        "advertisers": {
            advertiser["domain"]: advertiser["id"] for advertiser in data.get("admitad_adversiters", [])
        }
    },
    "aliexpress": {
        "app_key": data.get("aliexpress_app_key", ""),
        "app_secret": data.get("aliexpress_app_secret", ""),
        "tracking_id": data.get("aliexpress_tracking_id", ""),
        "discount_codes": "\n".join([code.get("line", "") for code in data.get("aliexpress_discount_codes", [])])
    },
    "log_level": "INFO"
}

# Guardar el archivo YAML
with open(yaml_file, 'w') as f:
    yaml.dump(config, f, allow_unicode=True, sort_keys=False)

print(f"Archivo YAML guardado en {yaml_file}")

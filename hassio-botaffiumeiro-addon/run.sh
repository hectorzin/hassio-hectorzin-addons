#!/bin/bash
set -e

# Variables configurables, asignadas desde el config.yaml
HOST_DATA_PATH=$(bashio::config 'path_to_host_data')

# Crear el directorio si no existe
mkdir -p ${HOST_DATA_PATH}

# Ejecutar el bot, con la configuración especificada
python3 /app/botaffiumeiro.py --data ${HOST_DATA_PATH}

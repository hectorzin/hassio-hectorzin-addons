#!/bin/bash
set -e

# Pass HA addon options to data/config.yaml
python3 /botaffiumeiro/json2yaml.py

cat /botaffiumeiro/data/config.yaml

# Start bot
python3 /botaffiumeiro/botaffiumeiro.py

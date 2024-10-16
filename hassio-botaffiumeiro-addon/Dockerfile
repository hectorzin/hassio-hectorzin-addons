# Imagen base
FROM ghcr.io/hectorzin/botaffiumeiro

# Añadir archivos necesarios (por ejemplo, el script run.sh)
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Comando de inicio del contenedor
CMD ["/run.sh"]

# Usar la imagen base de botaffiumeiro
FROM ghcr.io/hectorzin/botaffiumeiro

# Copiar el script de ejecución al contenedor
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Comando para ejecutar el script
CMD ["/run.sh"]

# Usar la imagen base de botaffiumeiro
ARG BUILD_FROM
FROM ghcr.io/hectorzin/botaffiumeiro as botaffiumeiro

# Copiar el script de ejecución al contenedor
COPY run.sh /run.sh
COPY --from=botaffiumeiro /app/govee /app/
COPY --from=botaffiumeiro /app/data /app/data
RUN chmod +x /app/run.sh

# Comando para ejecutar el script
CMD ["/run.sh"]

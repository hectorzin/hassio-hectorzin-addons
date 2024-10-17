ARG BUILD_FROM
FROM $BUILD_FROM

# Instalar las dependencias necesarias para el complemento
RUN \
  apk add --no-cache \
    python3 \
    py3-pip

# Copiar el script de ejecución al contenedor
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Comando para ejecutar el script run.sh
CMD [ "/run.sh" ]

FROM python:3.9-slim

# Instalar las dependencias necesarias
RUN apt-get update && apt-get install -y git

# Clonar el repositorio de Botaffiumeiro
RUN git clone https://github.com/hectorzin/botaffiumeiro.git /botaffiumeiro

# Instalar las dependencias del proyecto
WORKDIR /botaffiumeiro
RUN pip install -r requirements.txt

# Ejecutar la aplicación
CMD ["python", "botaffiumeiro.py"]

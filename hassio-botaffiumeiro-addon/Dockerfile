FROM python:3.9-slim

# Install necessary dependencies
RUN apt-get update && apt-get install -y git

# Clone the Botaffiumeiro repository
RUN git clone https://github.com/hectorzin/botaffiumeiro.git /botaffiumeiro

# Install project dependencies
WORKDIR /botaffiumeiro
RUN pip install -r requirements.txt

# Run the application
CMD ["python", "botaffiumeiro.py"]

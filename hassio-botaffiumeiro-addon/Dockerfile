FROM python:3.9-slim

# Install necessary dependencies
RUN apt-get update && apt-get install -y git

# Clone the Botaffiumeiro repository
RUN git clone https://github.com/hectorzin/botaffiumeiro.git /botaffiumeiro

# Install project dependencies
WORKDIR /botaffiumeiro
RUN pip install -r requirements.txt

# Ensure /data directory is created (for persistent data)
RUN mkdir -p /data

# Copy the run.sh script
COPY run.sh /botaffiumeiro/run.sh
RUN chmod +x /botaffiumeiro/run.sh

# Run the application
CMD ["/botaffiumeiro/run.sh"]

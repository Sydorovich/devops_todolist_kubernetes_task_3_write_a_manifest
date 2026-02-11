# Stage 1: Build Stage
FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy the application code to the container
COPY app.py docker-logo.png requirements.txt ./

# Install the required dependencies
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 8080

# Run database migrations and start the Django application
ENTRYPOINT ["python", "app.py"]

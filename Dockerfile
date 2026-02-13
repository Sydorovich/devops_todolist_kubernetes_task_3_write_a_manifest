# Stage 1: Build Stage
FROM python:3.8

# Set the working directory
WORKDIR /app

# Installing necessary dependencies for building the application
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container as separate layer
COPY . .

# Expose the application port
EXPOSE 8000

# Run database migrations and start the Django application
CMD ["sh", "-c", "python manage.py migrate && exec python manage.py runserver 0.0.0.0:8000"]

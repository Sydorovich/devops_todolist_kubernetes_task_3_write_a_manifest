# Stage 1: Build Stage
FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy the application code to the container
COPY . .

# Install the required dependencies
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 8000

# Run database migrations and start the Django application
ENTRYPOINT ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]

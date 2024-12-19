# Use an official Python runtime as a parent image
FROM python:3.10-slim  # Updated to use Python 3.10

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt  # Added --no-cache-dir for better performance

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run gunicorn when the container launches
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:main"]

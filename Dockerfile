# Use an official Python runtime as the base image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app/

# Expose the port that the app runs on
EXPOSE 5000

# Define environment variable
ENV FLASK_APP app.py

# Run the command to start the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]

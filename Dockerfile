# Use an official Python runtime as a parent image
FROM python:3.8-slim

ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Run the command to start uWSGI
CMD ["python", "-u", "./hello.py"]
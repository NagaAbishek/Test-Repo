# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy your application's code into the container
COPY . /app

# Install any necessary dependencies
RUN pip install -r requirements.txt

# Specify the command to run when the container starts
CMD [ "python", "app.py" ]

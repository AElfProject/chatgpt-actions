# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /chatgpt-api

# Copy the requirements file to the working directory
COPY chatgpt-api/requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app code to the working directory
COPY chatgpt-api/api.py .

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the Flask app
CMD ["flask", "--app", "api", "run", "--host=0.0.0.0"]


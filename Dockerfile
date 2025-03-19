# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /mainapp

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application source code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "mainapp.py"]

# Use an official Python runtime as the base image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 for the FastAPI app
EXPOSE 8080

# Run the FastAPI app using uvicorn (host is set to 0.0.0.0 to allow access from outside the container)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]

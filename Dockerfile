
# Use the official Python base image
FROM python:3.9.12-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . .

# Set the entry point command
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
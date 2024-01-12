# Use the official Ubuntu as the base image
FROM ubuntu:latest

# Set the working directory inside the container
#WORKDIR /app

# Copy your project files into the container at /app
#COPY java-webapp /app
COPY java-webapp/ app/

# Run any essential commands to build your project
# For example, if you are using a build tool like make, replace the command accordingly
RUN apt-get update -y && \
    apt-get install -y maven && \
    cd app && \
    mvn clean package
# Specify the default command to run when the container starts
#CMD ["./your_executable"]


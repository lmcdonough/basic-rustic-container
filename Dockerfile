# A Basic Dockerfile to create a Docker Image based off the official Rust image from Docker Hub and run a simple Rust program that can be accessed from the host machine.

# Use the official Rust image as the base image
FROM rust:latest

# Set the working directory inside the container
WORKDIR /usr/src/myapp

# Copy the current directory contents into the container at /usr/src/myapp
COPY . .

# Build the Rust application
RUN cargo build --release

# Specify the command to run the application
CMD ["./target/release/myapp"]

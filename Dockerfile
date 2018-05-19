FROM alpine:3.7

# Set the working directory to /app
WORKDIR /app/mystore

# Copy the current directory contents into the container at /app
ADD conf /app/mystore
ADD mystore /app/mystore
ADD static /app/mystore
ADD views /app/mystore
# Make port 80 available to the world outside this container
EXPOSE 8081

# Define environment variable
WORKDIR /app/mystore

# Run app.py when the container launches

ENTRYPOINT ["/app/mystore/mystore"]

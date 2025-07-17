# Use official Golang image as the build environment
FROM golang:1.22

# Set working directory inside the container
WORKDIR /app

# Copy all files into the container
COPY . .

# Build the Go app executable named 'main'
RUN go build -o main .

# Expose port 8080
EXPOSE 8080

# Run the executable
CMD ["./main"]

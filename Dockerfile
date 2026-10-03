# FROM nginx:alpine
# COPY . /usr/share/nginx/html
# EXPOSE 80

# ------------------------------------------------------------

# Use a lightweight alpine image
FROM alpine:latest

# Create an app directory
WORKDIR /app

# Copy the local application files into the container
COPY index.html .

# Build step: Create a 'dist' folder and move files into it
RUN mkdir dist && cp index.html dist/

# Command to output where the built files live
CMD ["echo", "Build complete! Static files are in /app/dist"]

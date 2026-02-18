# Use official lightweight PHP image with built-in server
FROM php:8.3-cli

# Set working directory
WORKDIR /app

# Copy all files from repo to container
COPY . /app

# Expose Render's dynamic port
EXPOSE ${PORT:-8080}

# Start PHP built-in server on Render's $PORT
CMD ["php", "-S", "0.0.0.0:${PORT:-8080}", "autoresponder.php"]

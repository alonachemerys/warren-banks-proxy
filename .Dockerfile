# Use a lightweight Node image
FROM node:18-alpine

# Set working directory
WORKDIR /api

# Install the hls-proxy package globally
RUN npm install -g @warren-bank/hls-proxy

# Expose the port the app will run on
EXPOSE 5050

# Command to start the proxy
CMD ["hlsd", "--port", "5050"]

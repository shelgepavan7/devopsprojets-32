# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy only package files first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the application code
COPY . .

# Expose port 9090 inside the container
EXPOSE 9090

# Command to run the app
CMD ["node", "app.js"]

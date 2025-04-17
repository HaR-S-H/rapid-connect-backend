# Use Node.js LTS (Long Term Support) image as base
FROM node:18-alpine

# Create and set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 5000

# Set environment variables
ENV NODE_ENV=production

# Start the server
CMD ["npm", "run","dev"]
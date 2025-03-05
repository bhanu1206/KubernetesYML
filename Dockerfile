# Stage 1: Use Node.js to serve the development build
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 for React development server
EXPOSE 3000

# Start the development server
CMD ["npm", "start"]


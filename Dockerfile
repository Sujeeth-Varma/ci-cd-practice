# Use a lightweight Node.js image
FROM node:current-alpine

# Set working directory
WORKDIR /app

# Copy package files first for caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install 

# Copy the rest of the project files
COPY . .

# Build the app (optional if needed)
RUN npm run build

# Start the app
CMD ["npm", "start"]

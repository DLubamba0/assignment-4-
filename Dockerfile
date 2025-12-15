# Use the official Node.js 16 image as the base
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy all application files into the container
COPY . .

# Expose port 3000 so it can be accessed from the host
EXPOSE 3000

# Command to start the Node.js application
CMD ["npm", "start"]

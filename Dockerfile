# Use Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the entire current directory into the working directory
COPY . .

# Build React app
RUN npm run build

# Expose the port your Express app will run on
EXPOSE 3001

# Start your Express app
CMD [ "npm", "start" ]
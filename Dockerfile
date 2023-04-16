# Set the base image to use for this Dockerfile
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install the dependencies defined in the package.json file
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Set the default command to run when the container starts
CMD ["npm", "server.js"]

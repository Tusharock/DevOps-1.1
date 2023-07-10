# Node Hello World

Simple node.js app that servers "hello world"

Great for testing simple deployments to the cloud

## Run It

`npm start`
To create a Docker image for the GitHub repository "johnpapa/node-hello," you can follow the steps below:

Clone the GitHub repository to your local machine:

## git clone https://github.com/johnpapa/node-hello.git
Create a Dockerfile in the root directory of the cloned repository. Open a text editor and paste the following contents into the Dockerfile:
# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port used by the application
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
Save the Dockerfile in the root directory of the cloned repository.

Build the Docker image using the Dockerfile. Open a terminal or command prompt, navigate to the directory containing the Dockerfile, and run the following command

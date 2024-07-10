# Use an official Node.js runtime as a parent image
FROM oven/bun:latest as base

# Set the working directory in the container
WORKDIR ./

# Copy package.json and package-lock.json
COPY package*.json bun.lockb ./ 

# Install dependencies
# RUN apt-get update
# RUN apt-get install gcc make --yes
RUN bun install
# RUN bun install --verbose

# Copy the source code
COPY . .

# Your app binds to port 5001, so expose it
EXPOSE 5003

# Define the command to run your app
CMD ["bun", "watch"]
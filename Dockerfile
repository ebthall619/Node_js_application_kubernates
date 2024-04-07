# First stage: building the Angular application
FROM node:18-alpine as build
# Set working directory
WORKDIR /app
EXPOSE 3000
# Copy package.json and package-lock.json (if present) to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the source code from the current directory to the working directory in the container
COPY . ./

# Set the default command to execute when the container starts
CMD ["npm", "start"]


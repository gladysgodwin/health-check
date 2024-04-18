# Use Node.js 14 as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY ./my-nest-app/package*.json ./

# Install dependencies
RUN npm install -g npm@latest
RUN npm install

# Copy the rest of the application code
COPY ./my-nest-app .

# Expose the port on which the NestJS app will run (if applicable)
EXPOSE 35000

# Command to run the NestJS app
CMD ["npm", "start"]

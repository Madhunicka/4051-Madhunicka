# Use the official Node.js image as a base
FROM node:latest as builder

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the Angular app for production
RUN ng build --configuration=production

# Use Nginx as a web server
FROM nginx:latest

# Copy the built app from the previous stage to the Nginx default public directory
COPY --from=builder /app/dist/calculator /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

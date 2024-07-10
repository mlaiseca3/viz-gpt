# Use an official Node.js 20.x Alpine image as a parent image
FROM node:20-alpine


# Install Vercel CLI globally
RUN npm install -g vercel
# Set the working directory in the container
WORKDIR /app

# Copy the package.json and yarn.lock files
COPY package.json yarn.lock* ./

# Install dependencies
RUN yarn install

# Set the Vercel token as an environment variable
ARG VERCEL_EMAIL
ENV VERCEL_EMAIL=${VERCEL_EMAIL}

# Log in to Vercel using the token
RUN npx vercel login $VERCEL_EMAIL

# Copy the rest of your application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application using Vercel CLI
CMD ["vercel", "dev"]

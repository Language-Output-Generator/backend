# Get the image
FROM node

# The /app directory should act as the main application directory
WORKDIR /app

# Copy the app package and package-lock.json file
COPY package.json .

# Install node packages, install serve, build the app, and remove dependencies at the end
RUN npm install

# Copy local directories to the current local directory of our docker image (WORKDIR)
COPY . .

# Expose this port
EXPOSE 3001

# Get the app running
CMD ["npm", "start"]
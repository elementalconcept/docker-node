# Get Node
FROM node:latest

# Set app directory
WORKDIR /backend-staging

# Install app dependencies
COPY package.json .
RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "app" ]

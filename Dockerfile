FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install req'd
COPY package*.json ./
RUN npm install --only=production

# Bundle app source
RUN mkdir dist
COPY dist/. dist/.

# Configure
EXPOSE 3000
CMD [ "npm", "start" ]
    
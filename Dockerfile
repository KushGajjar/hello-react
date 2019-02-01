FROM node:latest
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install -g serve

# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY ./build ./build

EXPOSE 3000
CMD [ "serve", "-s", "build", "-p", "3000" ]

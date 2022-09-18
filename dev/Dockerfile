FROM node:16

WORKDIR /usr/src/app

# Install maven
RUN apt-get update
RUN apt-get install -y maven

# Update npm config
RUN npm config set "@fortawesome:registry" https://npm.fontawesome.com/
RUN npm config set "//npm.fontawesome.com/:_authToken" B6FB927D-6C52-405D-8809-9BF5CD7467C5

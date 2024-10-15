FROM ubuntu

# Installation of nodejs in ubuntu
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

# Copy nodejs application file to image

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js


# install node module

RUN npm install

# Set Entrypoint

ENTRYPOINT ["node","main.js"]

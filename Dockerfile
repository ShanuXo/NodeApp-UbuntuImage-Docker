FROM ubuntu

# Installation of nodejs in ubuntu
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

WORKDIR /app

# Copy nodejs application file to image

COPY package.json package.json
COPY package-lock.json package-lock.json
# install node module
RUN npm install

COPY main.js main.js

ENTRYPOINT ["node","main.js"]

# COPY main.js main.js

# for copying all the file where we have made changes
# COPY . .


# # Copy nodejs application file to image

# COPY package.json /app/package.json
# COPY package-lock.json /app/package-lock.json
# # install node module
# RUN cd app && npm install

# COPY main.js /app/main.js

# # COPY main.js main.js

# # for copying all the file where we have made changes
# # COPY . .



# Set Entrypoint

# ENTRYPOINT ["node","app/main.js"]


# Efficient Caching in layers



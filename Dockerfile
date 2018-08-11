FROM node:8

# Create app directory
RUN mkdir /usr/src/app && mkdir /usr/src/app/data
WORKDIR /usr/src/app

# Upload to tmp
# RUN groupadd varwwwusers
# RUN adduser www-data varwwwusers
# RUN chgrp -R varwwwusers /tmp/
# RUN chmod -R 770 /tmp/

RUN useradd armadietto --system --no-create-home

RUN chmod 0700 /usr/src/app/data && chown armadietto /usr/src/app/data

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# RUN npm install
# If you are building your code for production
RUN npm install --only=production

# Bundle app source
COPY . .

# VOLUME /usr/src/app/data

EXPOSE 8000
CMD [ "npm", "start" ]
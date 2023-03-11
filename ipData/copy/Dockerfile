FROM UBUNTU

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN apt-get update
RUN npm install -g npm@9.6.1
RUN npm install && npm cache clean

# Bundle app source
COPY . .

ENV NODE_ENV=production

EXPOSE 5000
CMD ["npm", "start"] 
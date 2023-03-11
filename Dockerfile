FROM ubuntu

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y Node.js 
RUN apt-get install -y npm
RUN npm install

# Bundle app source
COPY . .

#ENV NODE_ENV=production

EXPOSE 5000
CMD ["npm", "run", "dev"] 
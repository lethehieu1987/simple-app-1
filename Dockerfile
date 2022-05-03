#FROM --platform=linux/amd64 node:16
FROM wordpress:5.8.3-php7.3-apache

#create app directory
WORKDIR /app

# install dependencies 
# A Wildcard to make sure that we will copy both package.json and package-lock.json
COPY package*.json /app/

RUN npm install

# Bundle app source
COPY . . 

EXPOSE 8080
CMD ["npm", "start"]

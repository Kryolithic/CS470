# using node v12.22.12
FROM node:12

# create app directory
WORKDIR /usr/src/lafs

# install app dependencies
COPY package*.json ./
RUN npm install -g @angular/cli@v6-lts
RUN npm install sass
RUN npm install

# bundle app source
COPY . .

# expose port
EXPOSE 4200

# Command used to start app
CMD ng serve --host 0.0.0.0
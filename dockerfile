FROM node:7.10.0

#use changes to package.json to force docker not use the cache
#when we change our appliction's nodejs dependencies:
COPY package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /usr/src/app && cp -a /tmp/node_modules /usr/src/app

#FROM here we load our applications code in, therefore the prvious docker
# "layer" thats been cached will be used if possible
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN npm run build
RUN rm -rf ./build
RUN rm -rf ./src

ENV PORT=80
EXPOSE 80

#Run the code
CMD ["npm", "start"]
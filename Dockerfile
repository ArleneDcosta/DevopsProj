FROM node:8
RUN mkdir -p /usr/src/app2
WORKDIR /usr/src/app2
COPY package.json /usr/src/app2
RUN npm cache clean
RUN npm install
COPY . /usr/src/app2
EXPOSE 4200
CMD ["npm","start"]
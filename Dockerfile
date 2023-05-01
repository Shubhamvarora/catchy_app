FROM node:19-alpine3.15

WORKDIR /catchy-clone

COPY . /catchy-clone
RUN npm install 

EXPOSE 3000
CMD ["npm","run","dev"]

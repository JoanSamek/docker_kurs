FROM node:15.12.0-buster-slim

# Create app directory
WORKDIR /code
COPY package.json package-lock.json /code/

RUN npm install

COPY src /code/src

EXPOSE 8080

CMD [ "npm", "start" ]
        #local

# FROM node:alpine

# WORKDIR /app

# COPY package.json /app

# RUN yarn install

# COPY . /app

# CMD ["yarn", "run", "start"]

        #producction
FROM node:alpine

WORKDIR /app

COPY package.json /app

RUN yarn install && yarn cache clean

COPY . /app

CMD ["yarn", "run", "build"]
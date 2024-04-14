FROM node:18.20.2

RUN mkdir -p /home/app/node_modules && chown -R node:node /home/app
WORKDIR /home/app

USER node
COPY --chown=node:node . .

COPY package.json .

RUN yarn install

COPY ./src .

CMD ["yarn", "dev"]
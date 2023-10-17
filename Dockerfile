FROM node:18.18.2

RUN mkdir -p /home/app/node_modules && chown -R node:node /home/app
WORKDIR /home/app

USER node
COPY --chown=node:node . .

COPY package.json .

RUN yarn install

COPY . .

CMD ["yarn", "dev"]
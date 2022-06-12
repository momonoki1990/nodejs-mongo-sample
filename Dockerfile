FROM node:18-alpine
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY ./src ./src
RUN chown -R node:node /app
EXPOSE 4000
USER node
CMD ["yarn", "start"]


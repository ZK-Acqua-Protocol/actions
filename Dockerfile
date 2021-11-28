FROM node:latest
WORKDIR /usr/src/app
ADD package.json yarn.lock /
RUN yarn ci
ADD action.js /
RUN chmod +x /action.js
ENTRYPOINT ["node", "/action.js"]
FROM node:18

WORKDIR /webapp

EXPOSE 3000

COPY package.json yarn.lock /webapp/
RUN yarn install --frozen-lockfile
COPY . /webapp
CMD ["yarn", "start"]
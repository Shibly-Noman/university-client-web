FROM node:14

RUN mkdir /uc_web

WORKDIR /uc_web

COPY ./package.json /uc_web

RUN npm install

COPY . /uc_web

RUN npm run build

CMD ["npm", "start"]



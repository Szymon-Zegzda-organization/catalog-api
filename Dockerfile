# syntax=docker/dockerfile:1

FROM node:12.18.1

ENV NODE_ENV=production

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production
COPY . .
ENTRYPOINT [ "npm", "start" ]
#docker build -t szychasz007/catalog-api-node .
#docker run -d -p 3000:3000 szychasz007/catalog-api-node
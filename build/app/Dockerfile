# Upstream's deployments/app.Dockerfile with these changes: the React sources are copied from
# app/ (upstream copies app/ from the app folder), and CI=true is set so the development server
# keeps running without the terminal upstream's compose file opens for it (`stdin_open: true`).
# pull official base image
FROM docker.io/library/node:13.12.0-alpine

WORKDIR /app

ADD app/ /app/

ENV CI=true
RUN apk update && npm install

CMD npm start

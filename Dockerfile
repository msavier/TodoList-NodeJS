FROM node:10.15.3

WORKDIR /app

ADD ./package.json /tmp/

RUN cd /tmp/ && npm install

RUN npm install -g pm2

ADD ./ /app/

RUN cp -r /tmp/node_modules/ /app/


EXPOSE 3000



RUN ls -la

ENTRYPOINT [ "pm2-docker", "server.js"]
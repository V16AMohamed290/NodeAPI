FROM node

RUN mkdir -p /app
ADD package.json /app
WORKDIR /app
RUN npm install --verbose
ENV NODE_PATH=/app/node_modules

COPY . /app/

CMD node /app/bin/www

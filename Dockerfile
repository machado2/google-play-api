FROM node:alpine
WORKDIR /app
ADD package*.json ./
RUN npm install
ADD lib lib
ADD server.js ./
ENTRYPOINT ["/usr/bin/env"] 
CMD ["node", "server.js"]

FROM node:lts-alpine



# git clone 
RUN apk add --no-cache git
RUN git clone https://github.com/yjs/y-webrtc.git 
WORKDIR /y-webrtc

# install dependencies
RUN npm install

# run simple server PORT=4444 node ./bin/server.js
CMD ["node", "./bin/server.js"]
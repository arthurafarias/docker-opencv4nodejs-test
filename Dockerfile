FROM arthurafarias/opencv4nodejs:latest

RUN git clone https://github.com/arthurafarias/opencv-express.git /app

WORKDIR /app

RUN npm install -g --unsafe-perm nodemon
RUN npm install

RUN ln -s /usr/local/lib/node_modules /usr/lib/node_modules

ENTRYPOINT ["nodemon", "/app/src/server.js"]

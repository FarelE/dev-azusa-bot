FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package*.json .

RUN npm install && npm install pm2 -g && pm2 link vvcfc5uo4rmgbli r8r13h1sg89nrm5

COPY . .

EXPOSE 5000

CMD ["npm", "start"]

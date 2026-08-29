FROM node:20-slim

ENV NODE_VERSION=20.18.1
ENV NPM_CONFIG_ENGINE_STRICT=false

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

CMD ["npm", "start"]

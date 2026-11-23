FROM node:22-alpine

WORKDIR /app
COPY package*.json ./
ENV NPM_CONFIG_REGISTRY=https://registry.npmmirror.com
COPY src ./src

ENV PORT=3456
EXPOSE 3456
USER node
CMD ["node", "src/server.js"]

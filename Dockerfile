FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

# Installing dependencies
RUN npm ci

COPY . .

ENV PORT=3000

EXPOSE $PORT

# Launch app
CMD ["npm", "start"]
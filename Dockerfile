FROM node

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install --force

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
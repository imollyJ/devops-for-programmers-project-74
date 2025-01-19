FROM node:20.12.2

RUN apk add --no-cache postgresql-client

WORKDIR /app

COPY app/package*.json ./

RUN npm install

COPY app/ ./

EXPOSE 8080

CMD ["sh", "-c", "until pg_isready -h db -p 5432; do echo waiting for db; sleep 2; done && npm start"]



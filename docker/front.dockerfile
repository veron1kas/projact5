FROM node:14.16.1

WORKDIR /app/frontend

COPY ./frontend/package*.json ./

RUN npm install

COPY ./backend/package*.json ../backend/

RUN npm install --prefix ../backend

COPY ./backend/common ../backend/common

EXPOSE 3002:3002

COPY ./frontend/ .

ENTRYPOINT ["npm", "run", "start"]
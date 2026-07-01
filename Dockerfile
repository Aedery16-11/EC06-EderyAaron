FROM dhi.io/node:24-alpine3.23-dev


WORKDIR /app


RUN npm install

RUN useradd -u 8877 john 
USER john

COPY package*.json ./
COPY . .

EXPOSE 5000

CMD ["npm", "start, " " &"]



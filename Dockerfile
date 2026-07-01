FROM dhi.io/node:24-alpine3.23-dev


WORKDIR /app


RUN pip install -r requirements.txt
RUN npm install

RUN useradd -u 8877 john #après le npm install car il faut root pour ça 
USER john

COPY package*.json ./
COPY . .

EXPOSE 5000

CMD ["npm", "start"]



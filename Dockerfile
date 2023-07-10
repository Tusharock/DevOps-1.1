FROM node:14
WORKDIR /myapp
COPY package.json ./
COPY package-lock.json ./
COPY index.js ./
COPY snap ./
COPY README.md ./
RUN npm install
EXPOSE 3000
CMD ["npm", "start"] 

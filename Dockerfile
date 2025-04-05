# -----------------------------------------
# ORDER SERVICE
# -----------------------------------------
# BASE IMAGE : NODE 18
# PORT : 3000
# -----------------------------------------
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm","start"]
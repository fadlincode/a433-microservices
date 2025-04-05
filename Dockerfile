# -----------------------------------------
# SHIPPING SERVICE
# -----------------------------------------
# BASE IMAGE : NODE 18
# PORT : 3001
# -----------------------------------------
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3001
CMD ["npm","start"]
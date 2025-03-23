# base image dari node versi 14
FROM node:14

# membuat working direktori /app
WORKDIR /app

# menyalin semua source ke working direktori
COPY . .

# menentukan environtment variable yang digunakan
# environtment di set ke production dan menggunakan container item-db
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies untuk production & build aplkasi
RUN npm install --production --unsafe-perm && npm run build

# expose port aplikasi ke 8080
EXPOSE 8080

# jalankan perintah npm start
CMD ["npm","start"]
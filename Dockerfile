# Menggunakan nodejs v14 alpine
FROM node:14.21.1-alpine3.16

# menjadikan direktori kerja
WORKDIR /app

# mencopy semua data ke /app
COPY . .

# mendefinisikan env
ENV NODE_ENV=production DB_HOST=item-db

# menginstall semua dependensi
RUN npm install --production --unsafe-perm && npm run build

# mengekspos port 8080
EXPOSE 8080

# instruksi CMD digunakan untuk mengeksekusi perintah saat Docker image telah dijalankan sebagai container
CMD ["npm","start"]
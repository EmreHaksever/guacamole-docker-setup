# Temel imaj olarak Nginx Alpine kullanıyoruz
FROM nginx:alpine

# Çalışma dizini
WORKDIR /etc/nginx

# Özel nginx.conf dosyamızı container içine kopyalıyoruz
COPY nginx.conf /etc/nginx/nginx.conf

# Ortam değişkenleri (isteğe bağlı)
ENV NGINX_PORT=80

# Gerekli izinler
RUN chmod 644 /etc/nginx/nginx.conf

# Nginx'i başlat
CMD ["nginx", "-g", "daemon off;"]

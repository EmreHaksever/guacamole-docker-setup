\# 🐳 Guacamole Docker Setup (CORS destekli)



Bu proje, Apache Guacamole'u Nginx reverse proxy üzerinden CORS destekli olarak çalıştırmak için hazırlanmıştır.



\## 🚀 Kurulum



1\. Bu repoyu klonlayın:

&nbsp;  ```bash

&nbsp;  git clone https://github.com/kullanici/guacamole-docker-setup.git

&nbsp;  cd guacamole-docker-setup

&nbsp;  ```



2\. Docker Desktop’un açık olduğundan emin olun.



3\. Container’ları başlatın:

&nbsp;  ```bash

&nbsp;  docker compose up -d

&nbsp;  ```



4\. Kurulum tamamlandıktan sonra tarayıcınızdan aşağıdaki adrese gidin:

&nbsp;  ```

&nbsp;  http://localhost:8080

&nbsp;  ```



5\. Varsayılan giriş bilgileri:

&nbsp;  ```

&nbsp;  Kullanıcı adı: guacadmin

&nbsp;  Şifre: guacadmin

&nbsp;  ```



\## ⚙️ Yardımcı Komutlar



Container’ların durumunu görmek için:

```bash

docker ps

```



Container’ları durdurmak için:

```bash

docker compose down

```

````




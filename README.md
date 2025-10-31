````{"variant":"standard","title":"Kullanıcı Dostu Guacamole Docker Kurulum Rehberi","id":"63628"}
# 🐳 Guacamole Docker Setup (CORS Destekli)

Bu proje, **Apache Guacamole**'u **Nginx reverse proxy** üzerinden **CORS desteğiyle** kolayca çalıştırmanızı sağlar.  
Docker kullanarak sadece **tek komutla** kurulabilir ve hemen tarayıcı üzerinden erişilebilir.

---

## 🚀 Kurulum Adımları

1. **Proje dosyalarını indirin:**
   ```bash
   git clone https://github.com/kullanici/guacamole-docker-setup.git
   cd guacamole-docker-setup
   ```

2. **Docker Desktop’un çalıştığından emin olun.**  
   (Windows veya macOS kullanıyorsanız Docker Desktop açık olmalı.)

3. **Tüm servisleri başlatın:**
   ```bash
   docker compose up -d
   ```

   Bu komut otomatik olarak aşağıdaki bileşenleri başlatır:
   - `guacd` → Guacamole bağlantı servisi  
   - `db` → MariaDB veritabanı  
   - `guacamole` → Guacamole web uygulaması  
   - `nginx` → CORS destekli reverse proxy

4. **Kurulum tamamlandıktan sonra tarayıcınızı açın ve şu adrese gidin:**
   ```
   http://localhost:8080
   ```

5. **Varsayılan giriş bilgileriyle oturum açın:**
   ```
   Kullanıcı adı: guacadmin
   Şifre: guacadmin
   ```

   🔐 **Not:** İlk girişten sonra bu bilgileri değiştirmeniz önerilir.

---

## ⚙️ Faydalı Komutlar

Container’ların durumunu görmek için:
```bash
docker ps
```

Tüm container’ları durdurmak için:
```bash
docker compose down
```

Logları görüntülemek için:
```bash
docker logs guacamole --tail 50
```

---

## 💡 Ek Bilgiler

- Proje **CORS sorunlarını otomatik olarak çözecek** şekilde yapılandırılmıştır.  
- **Nginx reverse proxy** üzerinden erişim sağlandığı için Guacamole’un kendi portunu dışa açmanız gerekmez.  
- Tüm veritabanı verileri `db_data` adlı volume’da saklanır — böylece yeniden başlatmalarda veriler korunur.

---
✨ Artık Guacamole’unuzu çalıştırmaya hazırsınız!
````

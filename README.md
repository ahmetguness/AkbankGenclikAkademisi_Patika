
# 📌 Akbank - Patika Kredi Kartı Harcama Analizi

Bu proje, **Akbank & Patika** iş birliği kapsamında kredi kartı harcama verilerinin analizini ve görselleştirilmesini amaçlamaktadır. Projede kullanıcı ve işlem (transaction) verileri birleştirilerek çeşitli analizler yapılır.

---

## 🔍 Proje Amacı
- Kullanıcı ve işlem verilerini bir araya getirerek anlamlı içgörüler elde etmek.
- En fazla harcama yapılan şehirleri ve saatleri belirlemek.
- Eksik veri kontrolü ve veri temizliği gerçekleştirmek.
- Harcamaların zaman bazlı ve şehir bazlı görselleştirilmesini sağlamak.

---

## 📂 Kullanılan Veriler
Proje iki temel veri seti kullanır:
- **users.csv** → Kullanıcı bilgileri (cinsiyet, gelir vb.)
- **transactions.csv** → İşlem bilgileri (tutar, tarih, şehir vb.)

---

## 🛠 Kullanılan Teknolojiler
- **Python 3.x**
- **Pandas** → Veri manipülasyonu
- **NumPy** → Sayısal işlemler
- **Matplotlib & Seaborn** → Veri görselleştirme

---

## 📈 Yapılan Analizler
- **En çok harcama yapılan ilk 10 şehir** (bar grafik)
- **Saatlik toplam harcama analizi** (çizgi grafik)
- Veri seti genel kalite özeti:
  - Toplam satır sayıları
  - Eksik değer sayıları

---

## ▶ Çalıştırma Adımları
1. Gerekli kütüphaneleri yükleyin:
   ```bash
   pip install pandas numpy matplotlib seaborn
   ```
2. Notebook'u açın:
   ```bash
   jupyter notebook akbank_patika_credit_card_spending_analysis.ipynb
   ```
3. **users.csv** ve **transactions.csv** dosyalarını `/content` klasörüne ekleyin.
4. Tüm hücreleri sırayla çalıştırın.

---

## 📊 Örnek Çıktılar
- **En Fazla Harcama Yapılan İlk 10 Şehir** → Bar grafiği
- **Saatlik Harcama Dağılımı** → Çizgi grafiği

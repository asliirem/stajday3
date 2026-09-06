# Staj Günü 3 - Veritabanı ve SQL Temelleri

Bu klasör, staj kapsamında SQL Server üzerinde yapılan çalışmaları içerir.

## İçerik

- **01_schema.sql** — Örnek veritabanı şeması: `Customers`, `Products`, `Orders` tabloları,
  Primary Key ve Foreign Key ilişkileri, test amaçlı örnek veri eklemeleri.
- **02_select_queries.sql** — Temel `SELECT` sorguları: tüm kayıtları listeleme, belirli
  sütunları seçme, `WHERE` ile filtreleme, `ORDER BY` ile sıralama, `DISTINCT` kullanımı.

## Konu Özeti

- SQL Server, uygulama verilerinin güvenli şekilde saklandığı bir veritabanı yönetim sistemidir.
- Veriler; müşteri, ürün, sipariş gibi farklı konulara göre ayrı tablolarda tutulur.
- **Primary Key**: Bir tablodaki her kaydı birbirinden ayıran benzersiz alan.
- **Foreign Key**: İki tablo arasında ilişki kurarak veri tekrarını önleyen alan.
- `SELECT` komutu ile veri görüntüleme, sütun seçme ve filtreleme işlemleri yapılabilir.

## Nasıl Çalıştırılır

1. `01_schema.sql` dosyasını SQL Server üzerinde çalıştırarak tabloları ve örnek verileri oluşturun.
2. `02_select_queries.sql` dosyasındaki sorguları tek tek çalıştırarak sonuçları inceleyin.

-- =========================================================
-- Basit SELECT Sorguları
-- Staj Günü 3: Veri görüntüleme, sütun seçme, filtreleme
-- =========================================================

-- 1) Tablodaki tüm kayıtları ve tüm sütunları listeleme
SELECT * FROM Customers;

-- 2) Sadece belirli sütunları seçme
SELECT FirstName, LastName, City
FROM Customers;

-- 3) Ürünleri fiyatlarıyla birlikte listeleme
SELECT ProductName, UnitPrice
FROM Products;

-- 4) WHERE ile filtreleme: Kayseri'de yaşayan müşteriler
SELECT FirstName, LastName, City
FROM Customers
WHERE City = 'Kayseri';

-- 5) Fiyatı 500 TL'den yüksek olan ürünler
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > 500;

-- 6) Belirli bir kategoriye ait ürünler
SELECT ProductName, Category, StockQty
FROM Products
WHERE Category = 'Elektronik';

-- 7) ORDER BY ile sıralama: en pahalı üründen en ucuza
SELECT ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC;

-- 8) Birden fazla koşul: hem kategori hem stok filtresi
SELECT ProductName, StockQty
FROM Products
WHERE Category = 'Elektronik' AND StockQty > 50;

-- 9) Belirli bir müşterinin siparişlerini görüntüleme
SELECT OrderId, ProductId, Quantity, OrderDate
FROM Orders
WHERE CustomerId = 1;

-- 10) DISTINCT ile tekrarsız kategori listesi
SELECT DISTINCT Category
FROM Products;

-- =========================================================
-- Örnek Veritabanı Şeması
-- Staj Günü 3: Veritabanı yapısı, Primary Key / Foreign Key
-- =========================================================

-- Var olan tabloları temizlemek istersen (dikkatli kullan!)
-- DROP TABLE IF EXISTS Orders;
-- DROP TABLE IF EXISTS Products;
-- DROP TABLE IF EXISTS Customers;

-- ---------------------------------------------------------
-- 1) Customers (Müşteriler) Tablosu
-- ---------------------------------------------------------
CREATE TABLE Customers (
    CustomerId   INT IDENTITY(1,1) PRIMARY KEY,  -- Primary Key: her müşteriyi benzersiz tanımlar
    FirstName    NVARCHAR(50)  NOT NULL,
    LastName     NVARCHAR(50)  NOT NULL,
    Email        NVARCHAR(100) NOT NULL UNIQUE,
    Phone        NVARCHAR(20)  NULL,
    City         NVARCHAR(50)  NULL,
    CreatedDate  DATETIME      DEFAULT GETDATE()
);

-- ---------------------------------------------------------
-- 2) Products (Ürünler) Tablosu
-- ---------------------------------------------------------
CREATE TABLE Products (
    ProductId    INT IDENTITY(1,1) PRIMARY KEY,  -- Primary Key: her ürünü benzersiz tanımlar
    ProductName  NVARCHAR(100) NOT NULL,
    Category     NVARCHAR(50)  NULL,
    UnitPrice    DECIMAL(10,2) NOT NULL,
    StockQty     INT           NOT NULL DEFAULT 0
);

-- ---------------------------------------------------------
-- 3) Orders (Siparişler) Tablosu
-- Foreign Key ile Customers ve Products tablolarına bağlanır
-- ---------------------------------------------------------
CREATE TABLE Orders (
    OrderId      INT IDENTITY(1,1) PRIMARY KEY,
    CustomerId   INT NOT NULL,
    ProductId    INT NOT NULL,
    Quantity     INT NOT NULL,
    OrderDate    DATETIME DEFAULT GETDATE(),

    -- Foreign Key: Orders tablosunu Customers tablosuna bağlar
    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),

    -- Foreign Key: Orders tablosunu Products tablosuna bağlar
    CONSTRAINT FK_Orders_Products
        FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
);

-- =========================================================
-- Örnek veri eklemeleri (test amaçlı)
-- =========================================================

INSERT INTO Customers (FirstName, LastName, Email, Phone, City) VALUES
('Ahmet',  'Yılmaz',  'ahmet.yilmaz@example.com',  '05551112233', 'Kayseri'),
('Elif',   'Kaya',    'elif.kaya@example.com',     '05552223344', 'Ankara'),
('Mehmet', 'Demir',   'mehmet.demir@example.com',  '05553334455', 'İstanbul');

INSERT INTO Products (ProductName, Category, UnitPrice, StockQty) VALUES
('Klavye',      'Elektronik', 350.00, 120),
('Mouse',       'Elektronik', 150.00, 200),
('Monitör',     'Elektronik', 2500.00, 40),
('Ofis Sandalyesi', 'Mobilya', 1200.00, 15);

INSERT INTO Orders (CustomerId, ProductId, Quantity) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 5),
(3, 4, 1);

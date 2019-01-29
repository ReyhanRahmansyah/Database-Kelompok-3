CREATE DATABASE DB_Foodcourt;

CREATE TABLE Admin(
	ID_Adm varchar(7),
	Nama_Adm varchar(50),
	PRIMARY KEY(ID_Adm)
	
);

INSERT INTO Admin VALUES
('5001','Catur Rustiani'),
('5002','Yahya'),

--
-- Tabel 'Laporan'

--

CREATE TABLE Laporan(
	No_Laporan varchar(7),
	ID_Adm varchar(7),
	Tgl_Laporan date,
	Pemasukan int(8),
	Pengeluaran int(8),
	PRIMARY KEY(No_Laporan),
	FOREIGN KEY(ID_Adm) REFERENCES Admin(ID_Adm) ON UPDATE CASCADE ON DELETE CASCADE
);

<<<<<<< HEAD
INSERT INTO Laporan VALUES
('4001','5001',2019-01-01,500000,300000),
('4002','5001',2019-01-03,600000,500000)


=======
>>>>>>> 495142334a842cfed4e636d6ca65f2473bc8f4ee
--
-- Tabel 'Kios'

--

CREATE TABLE Kios(
	No_Kios varchar(7),
    ID_Adm varchar(7),
    No_Laporan varchar(7),
	Nama_Pemilik varchar(50),
	Nama_Kios varchar(50),
	No_Tlp int(12),
	PRIMARY KEY(No_Kios),
	FOREIGN KEY(ID_Adm) REFERENCES Admin(ID_Adm) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(No_Laporan) REFERENCES Laporan(No_Laporan) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO Kios VALUES
('2001','5002','4001','Suparman','Ayam Ayaman',081264759870),
('2002','5002','4002','Supriman','Daging Dagingan',089789652453)

--
-- Tabel 'Makanan'
--

CREATE TABLE Makanan(
	ID_Makanan varchar(7),
	Nama_Makanan varchar(50),
	Harga varchar(50),
	
	PRIMARY KEY(ID_Makanan)
);

INSERT INTO Makanan VALUES
('3001','Ayam Goreng','10000'),
('3002','Sapi Goreng','15000')
<<<<<<< HEAD

=======
>>>>>>> 495142334a842cfed4e636d6ca65f2473bc8f4ee


CREATE TABLE Pengorderan(
	ID_Order varchar(7),
	No_Kios varchar(7),
	ID_Makanan varchar(7),
	ID_Adm varchar(7),
	Tgl_Order date,
	PRIMARY KEY(ID_Order),
	FOREIGN KEY(No_Kios) REFERENCES Kios(No_Kios) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(ID_Makanan) REFERENCES Makanan(ID_Makanan) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(ID_Adm) REFERENCES Admin(ID_Adm) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO Pengorderan VALUES
('7001','2001','3001','5001',2019-01-01),
('7002','2002','3002','5002',2019-01-01)

--
-- Tabel 'Customer'
--

CREATE TABLE customer(
	ID_Cus varchar(7),
	ID_Adm varchar(7),
    ID_Order varchar(7),
	Nama_Cus varchar(50),
	Alamat varchar(50),
	No_Tlp int(12),
	PRIMARY KEY(ID_Cus),
	FOREIGN KEY(ID_Adm) REFERENCES Admin(ID_Adm) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(ID_Order) REFERENCES Pengorderan(ID_Order) ON UPDATE CASCADE ON DELETE CASCADE

);

INSERT INTO customer VALUES
('1001','5001','7001','Rana','Bojongsoang',081345670245),
('1002','5001','7002','Rani','Baraya',081345670289)

CREATE TABLE Kurir(
	ID_Kurir varchar(7),
	ID_Cus varchar(7),
	ID_Adm varchar(7),
	Nama_Kurir varchar(50),
	No_Tlp int(12),
	PRIMARY KEY(ID_Kurir),
	FOREIGN KEY(ID_Adm) REFERENCES Admin(ID_Adm) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(ID_Cus) REFERENCES Customer(ID_Cus) ON UPDATE CASCADE ON DELETE CASCADE

);

INSERT INTO Kurir VALUES
('6001','1001','5001','Alpha',081345670258),
('6002','1002','5001','Beta',081345670267)

select *from kios;
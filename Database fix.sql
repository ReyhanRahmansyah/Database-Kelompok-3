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

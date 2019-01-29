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


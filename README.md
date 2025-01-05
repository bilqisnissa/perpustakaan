# PERPUSTAKAAN TEKNIK
### 1. Membuat Database db_perpustakaanteknik
```sql
CREATE DATABASE db_perpustakaanteknik;
```
![alt text](/PerpustakaanTeknikImages/createDatabase.png)

### 2. Membuat Tabel Pengunjung
```sql
CREATE TABLE pengunjung(
  Id_pengunjung int PRIMARY KEY,
  Nama_pengunjung varchar(255),
  Npm int(20),
  Alamat varchar(255),
  No_kartu_anggota int (6),
  Pas_foto int,
  Bukti_pembayaran int,
  Masa_berlaku datetime
);
```
![alt text](/PerpustakaanTeknikImages/createPengunjung.png)

### > Input Data ke Tabel Pengunjung
```sql
INSERT INTO pengunjung (id_pengunjung, nama_pengunjung, npm, alamat, no_kartu_anggota, pas_foto, bukti_pembayaran, masa_berlaku) 
VALUES 
(101, 'El Hopper', 4523210014, 'Hawkins, Indiana', 'IF7702', 'elhopper.png', 'lunas.png', 2029-17-1),
(102, 'Mike Wheeler', 4523210020, '2530 Piney Wood Lane di East Point', 'IF8023', 'mikewheeler.png', 'lunas.png', 2029-17-1),
(103, 'Number Five', 4523210005, 'Dublin, Ireland', 'IF4961', 'five.png', 'lunas.png', 2029-17-1),
(104, 'Dustin Henderson', 4523210030, '2886 Piney Wood Drive, East Point', 'IF5562', 'dustinhenderson.png', 'lunas.png', 2029-17-1),
(105, 'Maxine Mayfield', 4523210130, 'Texas, America', 'IF0293', 'maxinemayfield.png', 'lunas.png', 2029-17-1),
(106, 'Steve Harrington', 4523210090, '8253 Carlton Road, Riverdale', 'IF7102', 'steveharringtong.png', 'lunas.png', 2029-17-1), 
(107, 'Allison Hargreeves', 4523210150, 'Capetown, South Africa', 'IF7204', 'allison.png', 'lunas.png', 2029-17-1),
(108, 'Jonathan Byers', 4523210018, '13212 Montgomery Boulevard NE, Glenwood Hills, Albuquerque', 'IF5061', 'jonhbyers.png', 'lunas.png', 2029-17-1),
(109, 'Ben Hargreeves', 4523210010, 'Toronto, Canada', 'ben.png', 'lunas.png', 2029-17-1),
(110, 'Eddie Munson', 4523210190, 'Salt Lake City, Utah', 'IF9025', 'eddie.png', 'lunas.png', 2029-17-1),
(111, 'Will Byers', 4523210008, '13212 Montgomery Boulevard NE, Glenwood Hills, Albuquerque', 'IF4961', 'willbyers.png', 'lunas.png', 2029-17-1),
(112, 'Nancy Wheeler', 4523210120, '2530 Piney Wood Lane di East Point', 'IF7204', 'nancywheeler.png', 'lunas.png', 2029-17-1),
(113, 'Suzie', 4523210001, 'Salt Lake City, Utah', 'IF2090', 'suzie.png', 'lunas.png', 2029-17-1),
(114, 'Hermione Granger', 4523210002, '8 Heathgate, Hampstead Garden Suburb, London', 'IF0260', 'hermioner.png', 'lunas.png', 2029-17-1),
(115, 'Diego Hargreeves', 4523210140, 'Aguascalientes, Meksiko', 'IF3004', 'diego.png','lunas.png', 2029-17-1),
(116, 'Newt Scamander', 4523210019, '9 Sherringford Square, London', 'IF0402', 'newtscamander.png', 'lunas.png', 2029-17-1),
(117, 'Luna Lovegood', 4523210019, 'Ottery St Catchpole, Devon', 'IF0105', 'lovegood.png', 'lunas.png', 2029-17-1),
(118, 'Ginny Weasley', 4523210012, 'The Burrow, Ottery St Catchpole, Devon', 'IF0110', 'ginnyweasley.png', 'lunas.png', 2029-17-1),
(119, 'Jayme Hargreeves', 4523210135, 'Moskow, Rusia', 'IF3020', 'jaymehargreeves.png', 'lunas.png', 2029-17-1),
(120, 'Cedric Diggory', 452321032, 'Stockholm, Swedia', 'IF2330', 'cedricdiggory.png', 'lunas.png', 2029-17-1);
```
![alt text](/PerpustakaanTeknikImages/inputPengunjung.png)
![alt text](/PerpustakaanTeknikImages/outputPengunjung.png)

### 3. Membuat Tabel Buku
```sql
CREATE TABLE Buku (
  Nomor_isbn int PRIMARY KEY,
  Judul_buku varchar(255),
  Pengarang varchar(255),
  Penerbit varchar(255),
  Tahun_terbit date
);
```
![alt text](/PerpustakaanTeknikImages/createBuku.png)

### > Input Data ke Tabel Buku
```sql
INSERT INTO buku (nomor_isbn, judul_buku, pengarang, penerbit, tahun_terbit) 
VALUES (
    (10123456, 'Bumi', 'Tere Liye', 'Gramedia Pustaka Utama', 2014-04-11),
    (11276644, 'Tentang Kamu', 'Tere Liye', 'Gramedia Pustaka Utama', 2016-10-31),
    (10294310, 'Bulan', 'Tere Liye', 'Gramedia Pustaka Utama', 2015-02-22),
    (11143256, 'Nebula', 'Tere Liye', 'Gramedia Pustaka Utama', 2019-08-20),
    (10345600, 'Bintang', 'Tere Liye', 'Gramedia Pustaka Utama', 2017-05-28),
    (11376867, 'Komet', 'Tere Liye', 'Gramedia Pustaka Utama', 2018-04-21),
    (10416882, 'Selena', 'Tere Liye', 'Gramedia Pustaka Utama', 2020-03-03),
    (11483412, 'Hello', 'Tere Liye', 'Gramedia Pustaka Utama', 2023-01-29),
    (10568943, 'Matahari', 'Tere Liye', 'Gramedia Pustaka Utama', 2016-07-14),
    (11538411, 'Si Putih', 'Tere Liye', 'Gramedia Pustaka Utama', 2021-10-24),
    (10693506, 'Pergi', 'Tere Liye', 'Gramedia Pustaka Utama', 2018-11-01),
    (11627225, 'Pulang', 'Tere Liye', 'Gramedia Pustaka Utama', 2015-10-12),
    (10723001, 'Rindu', 'Tere Liye', 'Gramedia Pustaka Utama', 2014-02-06),
    (11735044, 'Hujan', 'Tere Liye', 'Gramedia Pustaka Utama', 2016-12-08),
    (10893062, 'janji', 'Tere Liye', 'Gramedia Pustaka Utama', 2021-10-06),
    (11812404, 'Lumpu', 'Tere Liye', 'Gramedia Pustaka Utama', 2020-07-18),
    (10920946, 'Sesuk', 'Tere Liye', 'Gramedia Pustaka Utama', 2022-04-29),
    (11955409, 'Burlian', 'Tere Liye', 'Gramedia Pustaka Utama', 2009-11-15),
    (11098092, 'Selamat Tinggal', 'Tere Liye', 'Gramedia Pustaka Utama', 2020-01-27),
    (12031005, 'Yang Telah Lama Pergi', 'Tere Liye', 'Gramedia Pustaka Utama', 2023-09-30)
);
```
![alt text](/PerpustakaanTeknikImages/inputBuku.png) 
![alt text](/PerpustakaanTeknikImages/outputBuku.png) 

### 4. Membuat Tabel Staff
```sql
CREATE TABLE staff (
  Id_staff int PRIMARY KEY,
  Nama_staff varchar(255),
  Jabatan varchar(255)
);
```
![alt text](/PerpustakaanTeknikImages/createStaff.png)

### > Input Data ke Tabel Staff
```sql
INSERT INTO staff (id_staff, nama_staff, jabatan) 
VALUES 
(2301, 'Eliza Hartanti', 'Kepala Pustakawan'), 
(2302, 'Indra Kurnia', 'Pustakawan'), 
(2303, 'Clara Wijaya', 'Asisten Pustakawan'), 
(2304, 'Erwin Saputra', 'Kepala Administrasi'), 
(2305, 'Bagus Pratama', 'Petugas Administrasi'), 
(2306, 'Clara Wijaya', 'Petugas Administrasi'), 
(2307, 'Fitri Permata', 'Petugas Administrasi'), 
(2308, 'Gina Rosalina', 'Pustakawan Digital'), 
(2309, 'Bambang Santoso', 'Pustakawan'), 
(23010, 'Eka Rahayu', 'Pustakawan Digital'), 
(23011, 'Dedi Firmansyah', 'Pengelola Koleksi Khusus'), 
(23012, 'Galang Wibowo', 'Petugas Keamanan'), 
(23013, 'Anita Pratama', 'Petugas Teknologi Informasi'), 
(23014, 'Dimas Nugroho', 'Petugas Teknologi Informasi'), 
(23015, 'Indra Kurnia', 'Petugas Keamanan'), 
(23016, 'Putri Nayara', 'Pengelola Koleksi Khusus'), 
(23017, 'Sandra Dewi', 'Asisten Petugas Teknologi Informasi'),
(23018, 'Bayu Setya', 'Pustakawan Digital'),
(23019, 'Nabil Putra', 'Pustakawan Digital'),
(23020, 'Reyhan Dewa', 'Petugas Keamanan');
```
![alt text](/PerpustakaanTeknikImages/inputStaff.png)
![alt text](/PerpustakaanTeknikImages/outputStaff.png)

### 5. Membuat Tabel Peminjaman
```sql
CREATE TABLE Peminjaman (
  Id_peminjaman int AUTO_INCREMENT PRIMARY KEY,
  id_ pengunjung int,
  Id_staff int,
  Nomot_isbn bigint,
  Tanggal_pinjam date,
  Tanggal_kembali date,
  Status_peminjaman varchar(255),
  FOREIGN KEY (id_pengunjung) REFERENCES Pengunjung(id_pengunjung),
  FOREIGN KEY (id_staff) REFERENCES Staff(id_staff),
  FOREIGN KEY (nomor_isbn) REFERENCES Buku(nomor_isbn)
);
```
![alt text](/PerpustakaanTeknikImages/createPeminjaman.png)

### > Input Data Tabel Peminjaman
```sql
INSERT INTO peminjaman (id_peminjaman, id_pengunjung, id_staff, nomor_isbn, tanggal_pinjam, tanggal_kembali, status_peminjaman) 
VALUES
(1, 101, 2303, 10416882, '2024-12-30', '2025-01-10', 'Belum Kembali'),
(2, 102, 2303, 10345600, '2024-12-10', '2024-12-15', 'Kembali'),
(3, 103, 23019, 11955409, '2024-12-10', '2024-12-15', 'Kembali'),
(4, 104, 2303, 10920946, '2024-11-30', '2024-12-10', 'Kembali'),
(5, 105, 2303, 11143256, '2024-10-25', '2024-11-05', 'Kembali'),
(6, 106, 23019, 10782301, '2024-10-20', '2024-11-02', 'Kembali'),
(7, 107, 2303, 12031005, '2024-10-05', '2024-10-20', 'Kembali'),
(8, 108, 2303, 11735044, '2024-10-05', '2024-10-20', 'Kembali'),
(9, 109, 23019, 11276644, '2024-09-30', '2024-10-10', 'Kembali'),
(10, 110, 23019, 11276644, '2024-09-30', '2024-10-10', 'Kembali'),
(11, 111, 2303, 11812404, '2024-09-30', '2024-10-10', 'Kembali'),
(12, 112, 23019, 11627225, '2024-09-30', '2024-10-10', 'Kembali'),
(13, 113, 2303, 10693506, '2024-09-20', '2024-09-30', 'Kembali'),
(14, 114, 2303, 10693506, '2024-09-20', '2024-09-30', 'Kembali'),
(15, 115, 2303, 10214356, '2024-09-20', '2024-09-30', 'Kembali'),
(16, 116, 2303, 10893062, '2024-09-10', '2024-09-10', 'Kembali'),
(17, 117, 2303, 11538411, '2024-09-20', '2024-09-30', 'Kembali'),
(18, 118, 2303, 11376867, '2024-09-10', '2024-09-10', 'Kembali'),
(19, 119, 2303, 10294310, '2024-08-30', '2024-09-10', 'Kembali'),
(20, 120, 23019, 10294310, '2024-08-30', '2024-09-10', 'Kembali');
```
![alt text](/PerpustakaanTeknikImages/inputPeminjaman.png)
![alt text](/PerpustakaanTeknikImages/outputPeminjaman.png) 

### 6. Menambahkan Field CekData pada Tabel Peminjaman
```sql
ALTER TABLE peminjaman ADD CekData varchar(255);
```
![alt text](/PerpustakaanTeknikImages/addField.png)
![alt text](/PerpustakaanTeknikImages/outputUpdatePeminjaman.png)

### 7. Modify Field CekData pada Tabel Peminjaman
```sql
ALTER TABLE peminjaman MODIFY CekData varchar(25);
```
![alt text](/PerpustakaanTeknikImages/modifyField.png)
![alt text](/PerpustakaanTeknikImages/outputModifyPeminjaman.png)

### 8. Update Isi Data CekData pada Tabel Peminjaman
> Update semua isi data
```sql
UPDATE peminjaman
  SET CekData = 'Terverifikasi';
```
![alt text](/PerpustakaanTeknikImages/outputPeminjamanUpdate.png)

> Update isi data sesuai id
```sql
UPDATE peminjaman
  SET CekData = 'Belum Terverifikasi'
  WHERE id_peminjaman = 1;
```
![alt text](/PerpustakaanTeknikImages/outputPeminjamanUpdate2.png)

### 9. Menghapus Field CekData pada Tabel Peminjaman
```sql
ALTER TABLE peminjaman DROP CekData;
```

![alt text](/PerpustakaanTeknikImages/dropField.png)

-- membuat schema baru
create schema belajar_sql;

-- gunakan schema belajar_sql
use belajar_sql;

-- membuat tabel menggunakan create
create table pengguna (
	id INT PRIMARY KEY,
    nama_pengguna VARCHAR(50),
    usia INT,
    peran_id INT
    );
    
create table peran (
 id INT PRIMARY KEY,
    nama VARCHAR(50)
);

create table pembayaran(
	id INT PRIMARY KEY,
    jumlah INT,
    keterangan VARCHAR(100)
    );
    
-- memasukan data kedalam tabel menggunakan insert
insert into belajar_sql.pengguna values
	(1, 'Ali', 23, 1),
	(2, 'Budi', 24, 2),
	(3, 'Cici', 23, 1),
	(4, 'Dodi', 30, 3),
	(5, 'Eva', 28, 2),
	(6, 'Firda', 25,  1),
	(7, 'Grace', 29, 3),
	(8, 'Haris', 27, 2),
	(9, 'Ira', 23, 1),
	(10, 'Joko', 35, 3);
    
insert into belajar_sql.peran values
	(1, 'Admin'),
	(2, 'Pengguna'),
	(3, 'Manajer');
    
insert into belajar_sql.pembayaran values
	(1, 500, 'Pembayaran untuk layanan'),
	(2, 600, 'Langganan bulanan'),
	(3, 550, 'Pembelian produk'),
	(4, 700, 'Biaya konsultasi'),
	(5, 650, 'Biaya perpanjangan'),
	(6, 520, 'Biaya layanan'),
	(7, 720, 'Pembayaran kontrak'),
	(8, 630, 'Perpanjangan keanggotaan'),
	(9, 540, 'Pembayaran tagihan'),
	(10, 710, 'Pembayaran selesainya proyek');
    
-- menampilkan semua data pada sebuah tabel menggunakan select
select * from belajar_sql.pengguna;
select * from belajar_sql.pembayaran;
select * from belajar_sql.peran;

-- menmapilkan kolom tertentu dari tabel pengguna
select nama_pengguna from belajar_sql.pengguna;
select usia from belajar_sql.pengguna;
select nama_pengguna, usia from belajar_sql.pengguna;

-- menampilkan kolom tertentu dari tabel peran
select nama from belajar_sql.peran;
select id, nama from belajar_sql.peran;

-- menampilkan kolom tertentu dari tabel pembayaran
select jumlah from belajar_sql.pembayaran;
select keterangan from belajar_sql.pembayaran;
select jumlah, keterangan from belajar_sql.pembayaran;

-- mengupdate data pada sebuah tabel menggunakan update dan where
insert into belajar_sql.pengguna (id) value (11);
-- update 1 kolom --
update belajar_sql.pengguna
set nama_pengguna = 'yasir'
where id = 11;
-- update 2 kolom atau lebih --
update belajar_sql.pengguna 
set usia = 23, peran_id = 1
where id = 11;
-- update tabel pembayaran --
insert into belajar_sql.pembayaran (id) value (11);
update belajar_sql.pembayaran
set jumlah = 630, keterangan = 'Langganan bulanan'
where id = 11;

-- menggunakan perintah delete dan where untuk mengahpus baris dengan kondisi tertentu
delete from belajar_sql.pengguna
where id = 11;
delete from belajar_sql.pembayaran
where id = 11;



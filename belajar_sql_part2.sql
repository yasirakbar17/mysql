-- menggunkana schema belajar_sql
use belajar_sql;

-- menambahkan kolom baru menggunakan alter table --
alter table belajar_sql.pengguna
add column status_pengguna varchar(100);

-- menghapus kolom
alter table belajar_sql.pengguna
drop column status_pengguna;

-- mengubah ukuran dan tipe data kolom 
alter table belajar_sql.pengguna
modify column nama_pengguna VARCHAR(100);

alter table belajar_sql.pengguna
modify column usia int(4);

-- menambahkan index pada tabel
alter table belajar_sql.pengguna
add index index_nama (nama_pengguna);

-- melihat index yang ditambahkan pada tabel
show index from belajar_sql.pengguna;

-- menghapus index yang pada tabel
alter table belajar_sql.pengguna
drop index index_nama;

-- mengurutkan data berdasarkan kolom tertentu dari kecil-besar menggunkan order by dan asc
select * from belajar_sql.pengguna
order by nama_pengguna asc;

select * from belajar_sql.pengguna
order by usia asc;

-- mengurutkan data berdasarkan kolom tertentu dari kecil-besar menggunakan order by dan desc
select * from belajar_sql.pengguna
order by nama_pengguna desc;

select * from belajar_sql.pengguna
order by usia desc;

-- menampilkan data dengan banyak tertentu menggunakan limit
select * from belajar_sql.pengguna
limit 3;

-- mengurutkan dan mengambil urutan tertentu menggunnakan order by, limit dan offset
select * from belajar_sql
order by usia 
limit 1 offset 2;

-- menampilkan nilai tertentu dalam sebuah tabel tanpa duplikat menggunakan distinct
select distinct * from belajar_sql.pengguna;

select distinct usia from belajar_sql.pengguna;

SELECT MIN(nama_pengguna), usia
FROM belajar_sql.pengguna
GROUP BY usia;

select * from belajar_sql.pengguna;


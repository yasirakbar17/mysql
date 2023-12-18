use belajar_sql;

-- oeprator dalamm sql--
-- operator sama dengan (=)--
select * from belajar_sql.pengguna
where usia = 23;

-- menampilkan nama pengguna yang berusia 24 tahun
select nama_pengguna, usia from belajar_sql.pengguna
where usia = 24;

-- menampilkan data pengguna yang mempunyai nama 'Budi'
select * from belajar_sql.pengguna
where nama_pengguna = 'Budi';

-- operator tidak sama dengan (<> atau =!)
select * from belajar_sql.pengguna
where usia <> 24;

select * from belajar_sql.pengguna
where usia != 24;

select nama_pengguna, usia from belajar_sql.pengguna
where nama_pengguna != 'Ali';

-- operator kurang dari (<)
select * from belajar_sql.pengguna
where usia < 28;

select id, nama_pengguna, usia from belajar_sql.pengguna
where id < 7;

-- operator lebih dari (>)
select * from belajar_sql.pengguna
where usia > 25;

select id, nama_pengguna, usia from belajar_sql.pengguna
where id > 5;

-- operator kurang dari sama dengan(<=)
select * from belajar_sql.pengguna
where usia <= 30;

select nama_pengguna from belajar_sql.pengguna
where usia <=28;

select nama_pengguna, usia from belajar_sql.pengguna
where id <= 5;

-- operator lebih dari sama dengan
select * from belajar_sql.pengguna
where usia >= 23;

select nama_pengguna from belajar_sql.pengguna
where usia >=25;

select nama_pengguna, usia from belajar_sql.pengguna
where id >= 8;

-- menampilkan urutan ke-3 nama pengguna dan usia dibawah 30 tahun dari yang besar ke kecil
select nama_pengguna, usia from belajar_sql.pengguna
where usia < 30
order by usia desc
limit 1 offset 2;

-- menampilkan data pengguna teratas yang berusia 25 tahun ketas di urutkan berdasarkan nama_pengguna sesuai abjad 
select * from belajar_sql.pengguna
where usia > 25
order by nama_pengguna asc
limit 1;

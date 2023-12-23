use belajar_sql;

-- operator aritmatika -- 
-- operator (+)
select jumlah+100 jumlah_baru from belajar_sql.pembayaran
where jumlah < 600;

select keterangan, jumlah + 50 jumlah_baru from belajar_sql.pembayaran
where jumlah > 500;

select usia+5 from belajar_sql.pengguna
group by usia;

-- operator (-)
select jumlah-100 from belajar_sql.pembayaran;

select jumlah-50 jumlah_baru from belajar_sql.pembayaran
where jumlah >600
order by jumlah_baru asc;

-- operator perkalian (*)
select jumlah * 2 jumlah_baru from belajar_sql.pembayaran;

select jumlah * 3 jumlah_baru from belajar_sql.pembayaran
where jumlah < 550;

select keterangan, jumlah * 2 jumlah_baru from belajar_sql.pembayaran
where jumlah = 550 or jumlah = 600
order by jumlah_baru desc;

-- operator pembagian (/)
select jumlah/2 from belajar_sql.pembayaran;

select jumlah/3 jumlah from belajar_sql.pembayaran
where jumlah >700
order by jumlah desc
limit 1;

select keterangan, (jumlah/2)/3 jumlah_baru from belajar_sql.pembayaran
where jumlah >500
order by jumlah asc
limit 3;

-- operator sisa oembagian(%)
select usia%10 sisa_pembagian from belajar_sql.pengguna;

select usia from belajar_sql.pengguna
where usia%10 != 0
order by usia asc;



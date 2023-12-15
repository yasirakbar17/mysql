create schema toko;
use toko;

-- Read_data
select * from toko.penjualan_barang;

-- total seluruh data
select count(*) from toko.penjualan_barang;

-- jumlah total hari
select count(distinct tanggal) total_hari from toko.penjualan_barang;

-- jumlah pembeli 
select count(distinct nama_pembeli) from toko.penjualan_barang;

-- jumlah_total, minimal, maksimal dan rata_rata nilai nominal 
select sum(nominal) sum, min(nominal) min, max(nominal) max, avg(nominal) avg from toko.penjualan_barang;

-- min, max dan rata_rata penjualan satuan barang
select min(kuantum) min_kuantum, max(kuantum) max_kuantum, avg(kuantum) rata_rata_kuantum from toko.penjualan_barang;

-- minimal penjualan satuan 
select nama_pembeli, nama_barang, kuantum from toko.penjualan_barang
order by nama_pembeli, kuantum asc;

-- rata_rata penjualan perhari
select tanggal, avg(nominal) as rata_rata
from toko.penjualan_barang
group by tanggal
order by tanggal asc;

-- top 10 pembeli yang sering belanja
select nama_pembeli, count(nama_pembeli) jumlah from toko.penjualan_barang
group by nama_pembeli
order by jumlah desc
limit 10;

-- top 10 kebawah pembeli yang jarang belanja
select nama_pembeli, count(nama_pembeli) jumlah from toko.penjualan_barang
group by nama_pembeli
order by jumlah asc
limit 10;

-- barang yang sering di beli
select nama_barang, count(nama_barang) jumlah from toko.penjualan_barang
group by nama_barang
order by jumlah desc;

-- barang dengan nominal penjualan tertinggi
select nama_barang, sum(nominal) jumlah from toko.penjualan_barang
group by nama_barang
order by jumlah desc;

-- banyaknya barang yang di jual berdasarkan satuan
select nama_barang, sum(kuantum) jumlah from toko.penjualan_barang
group by nama_barang
order by jumlah desc;

-- top 5 keatas dan kebawah jumlah minimum pembelian barang 
(select distinct nama_pembeli, min(kuantum) jumlah_minimum from toko.penjualan_barang
group by nama_pembeli
order by jumlah_minimum desc
limit 5)
union
(select distinct nama_pembeli, min(kuantum) jumlah_minimum from toko.penjualan_barang
group by nama_pembeli
order by jumlah_minimum asc
limit 5);


SELECT 
    table_name
FROM
    information_schema.tables
WHERE
    table_schema = 'belajar_sql';
    
-- iner join--
SELECT 
    *
FROM
    belajar_sql.pengguna
        INNER JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id;
 
SELECT 
    nama_pengguna, usia, jumlah, keterangan
FROM
    belajar_sql.pengguna
        INNER JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id;
    
SELECT 
    nama_pengguna, usia, jumlah, keterangan
FROM
    belajar_sql.pengguna
        INNER JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id
WHERE
    usia > 24 AND jumlah > 500
ORDER BY jumlah DESC
LIMIT 1; 

SELECT 
    *
FROM
    belajar_sql.pengguna
        INNER JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id
        INNER JOIN
    belajar_sql.peran ON peran.id = pengguna.id;
    
SELECT 
    nama_pengguna, usia, jumlah, keterangan, peran
FROM
    belajar_sql.pengguna
        INNER JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id
        INNER JOIN
    belajar_sql.peran ON peran.id = pengguna.id
WHERE
    usia > 24
        OR jumlah > 500 AND peran = 'Manajer'
ORDER BY jumlah DESC
LIMIT 1;

-- left join--
SELECT 
    *
FROM
    belajar_sql.pengguna
        LEFT JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id;

SELECT 
    nama_pengguna, keterangan
FROM
    belajar_sql.pengguna
        LEFT JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id
ORDER BY nama_pengguna ASC;

SELECT 
    nama_pengguna, usia, jumlah, keterangan, peran
FROM
    belajar_sql.pengguna
        LEFT JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id
        LEFT JOIN
    belajar_sql.peran ON peran.id = pengguna.id
WHERE
    pengguna.id = 1 OR pengguna.id = 5;
    
-- right join--

SELECT 
    *
FROM
    belajar_sql.pengguna
        RIGHT JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id;

SELECT 
    nama_pengguna, jumlah, keterangan
FROM
    belajar_sql.pengguna
        RIGHT JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id
WHERE
    jumlah IS NULL;
    
SELECT 
    nama_pengguna, jumlah, keterangan, peran
FROM
    belajar_sql.pengguna
        RIGHT JOIN
    belajar_sql.pembayaran ON pembayaran.id = pengguna.id
        RIGHT JOIN
    belajar_sql.peran ON peran.id = pengguna.id
WHERE
    pengguna.id > 1
ORDER BY jumlah DESC;

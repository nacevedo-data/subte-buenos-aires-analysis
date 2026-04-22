-- ============================================================================================================================
-- PROYECTO FINAL — NICOLAS ACEVEDO
-- ETAPA 2: LIMPIEZA Y TRANSFORMACIÓN DE DATOS
-- Sistema de Subterráneos de Buenos Aires (2014–2021)
-- ============================================================================================================================

CREATE DATABASE data_subtes_ba;
USE data_subtes_ba;

-- ============================================================================================================================
-- SECCIÓN 1: CREACIÓN DE TABLAS STAGING Y CARGA DE DATOS FUENTE
-- ============================================================================================================================

-- ------------------------------------------------------------
-- 2014
-- ------------------------------------------------------------
CREATE TABLE stg_pasajeros_2014 (
    fecha           VARCHAR(20),
    desde_hora      VARCHAR(20),
    hasta_hora      VARCHAR(20),
    linea           VARCHAR(10),
    molinete        VARCHAR(50),
    id_estacion     VARCHAR(20),
    estacion        VARCHAR(100),
    pax_pago        VARCHAR(20),
    pax_pases_pagos VARCHAR(20),
    pax_franq       VARCHAR(20),
    pax_total       VARCHAR(20)
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/historico_2014.csv'
INTO TABLE stg_pasajeros_2014
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, desde_hora, hasta_hora, linea, molinete, id_estacion, estacion, pax_pago, pax_pases_pagos, pax_franq, pax_total);

CREATE INDEX idx_estacion_2014 ON stg_pasajeros_2014(estacion);
CREATE INDEX idx_linea_2014    ON stg_pasajeros_2014(linea);

-- Verificaciones
SELECT estacion, COUNT(*) FROM stg_pasajeros_2014 GROUP BY estacion ORDER BY COUNT(*) DESC LIMIT 10;
SELECT linea,    COUNT(*) FROM stg_pasajeros_2014 GROUP BY linea;

-- ------------------------------------------------------------
-- 2015
-- ------------------------------------------------------------
CREATE TABLE stg_pasajeros_2015 (
    periodo         VARCHAR(20),
    fecha           VARCHAR(20),
    desde_hora      VARCHAR(20),
    hasta_hora      VARCHAR(20),
    linea           VARCHAR(10),
    molinete        VARCHAR(50),
    estacion        VARCHAR(100),
    pax_pagos       VARCHAR(20),
    pax_pases_pagos VARCHAR(20),
    pax_franq       VARCHAR(20),
    total           VARCHAR(20)
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/historico_2015.csv'
INTO TABLE stg_pasajeros_2015
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(periodo, fecha, desde_hora, hasta_hora, linea, molinete, estacion, pax_pagos, pax_pases_pagos, pax_franq, total);

CREATE INDEX idx_estacion_2015 ON stg_pasajeros_2015(estacion);
CREATE INDEX idx_linea_2015    ON stg_pasajeros_2015(linea);

-- Verificaciones
SELECT estacion, COUNT(*) FROM stg_pasajeros_2015 GROUP BY estacion ORDER BY COUNT(*) DESC LIMIT 10;
SELECT linea,    COUNT(*) FROM stg_pasajeros_2015 GROUP BY linea;

-- ------------------------------------------------------------
-- 2016
-- ------------------------------------------------------------
CREATE TABLE stg_pasajeros_2016 (
    fecha           VARCHAR(20),
    desde_hora      VARCHAR(20),
    hasta_hora      VARCHAR(20),
    linea           VARCHAR(10),
    molinete        VARCHAR(50),
    id_estacion     VARCHAR(100),
    estacion        VARCHAR(100),
    pax_pagos       VARCHAR(20),
    pax_pases_pagos VARCHAR(20),
    pax_franq       VARCHAR(20),
    pax_TOTAL       VARCHAR(20)
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/historico_2016.csv'
INTO TABLE stg_pasajeros_2016
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, desde_hora, hasta_hora, linea, molinete, id_estacion, estacion, pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL);

CREATE INDEX idx_estacion_2016 ON stg_pasajeros_2016(estacion);
CREATE INDEX idx_linea_2016    ON stg_pasajeros_2016(linea);

-- Verificaciones
SELECT estacion, COUNT(*) FROM stg_pasajeros_2016 GROUP BY estacion ORDER BY COUNT(*) DESC LIMIT 10;
SELECT linea,    COUNT(*) FROM stg_pasajeros_2016 GROUP BY linea;

-- ------------------------------------------------------------
-- 2017
-- ------------------------------------------------------------
CREATE TABLE stg_pasajeros_2017 (
    V1              VARCHAR(20),
    fecha           VARCHAR(20),
    desde_hora      VARCHAR(20),
    hasta_hora      VARCHAR(20),
    linea           VARCHAR(10),
    molinete        VARCHAR(50),
    id_estacion     VARCHAR(100),
    estacion        VARCHAR(100),
    pax_pagos       VARCHAR(20),
    pax_pases_pagos VARCHAR(20),
    pax_franq       VARCHAR(20),
    pax_TOTAL       VARCHAR(20)
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/historico_2017.csv'
INTO TABLE stg_pasajeros_2017
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(V1, fecha, desde_hora, hasta_hora, linea, molinete, id_estacion, estacion, pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL);

CREATE INDEX idx_estacion_2017 ON stg_pasajeros_2017(estacion);
CREATE INDEX idx_linea_2017    ON stg_pasajeros_2017(linea);

-- Verificaciones
SELECT estacion, COUNT(*) FROM stg_pasajeros_2017 GROUP BY estacion ORDER BY COUNT(*) DESC LIMIT 10;
SELECT linea,    COUNT(*) FROM stg_pasajeros_2017 GROUP BY linea;

-- ------------------------------------------------------------
-- 2018
-- ------------------------------------------------------------
CREATE TABLE stg_pasajeros_2018 (
    fecha           VARCHAR(20),
    desde_hora      VARCHAR(20),
    hasta_hora      VARCHAR(20),
    linea           VARCHAR(10),
    molinete        VARCHAR(50),
    estacion        VARCHAR(100),
    pax_pagos       VARCHAR(20),
    pax_pases_pagos VARCHAR(20),
    pax_franq       VARCHAR(20),
    pax_TOTAL       VARCHAR(20),
    periodo         VARCHAR(20)
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/historico_2018.csv'
INTO TABLE stg_pasajeros_2018
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, desde_hora, hasta_hora, linea, molinete, estacion, pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL, periodo);

CREATE INDEX idx_estacion_2018 ON stg_pasajeros_2018(estacion);
CREATE INDEX idx_linea_2018    ON stg_pasajeros_2018(linea);

-- Verificaciones
SELECT estacion, COUNT(*) FROM stg_pasajeros_2018 GROUP BY estacion ORDER BY COUNT(*) DESC LIMIT 10;
SELECT linea,    COUNT(*) FROM stg_pasajeros_2018 GROUP BY linea;

-- ------------------------------------------------------------
-- 2019
-- ------------------------------------------------------------
CREATE TABLE stg_pasajeros_2019 (
    periodo         VARCHAR(20),
    fecha           VARCHAR(20),
    desde_hora      VARCHAR(20),
    hasta_hora      VARCHAR(20),
    linea           VARCHAR(10),
    molinete        VARCHAR(50),
    estacion        VARCHAR(100),
    pax_pagos       VARCHAR(20),
    pax_pases_pagos VARCHAR(20),
    pax_franq       VARCHAR(20),
    pax_TOTAL       VARCHAR(20)
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/historico_2019.csv'
INTO TABLE stg_pasajeros_2019
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(periodo, fecha, desde_hora, hasta_hora, linea, molinete, estacion, pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL);

CREATE INDEX idx_estacion_2019 ON stg_pasajeros_2019(estacion);
CREATE INDEX idx_linea_2019    ON stg_pasajeros_2019(linea);

-- Verificaciones
SELECT estacion, COUNT(*) FROM stg_pasajeros_2019 GROUP BY estacion ORDER BY COUNT(*) DESC LIMIT 10;
SELECT linea,    COUNT(*) FROM stg_pasajeros_2019 GROUP BY linea;

-- ------------------------------------------------------------
-- 2020
-- ------------------------------------------------------------
CREATE TABLE stg_pasajeros_2020 (
    fecha           VARCHAR(20),
    desde_hora      VARCHAR(20),
    hasta_hora      VARCHAR(20),
    linea           VARCHAR(10),
    molinete        VARCHAR(50),
    estacion        VARCHAR(100),
    pax_pagos       VARCHAR(20),
    pax_pases_pagos VARCHAR(20),
    pax_franq       VARCHAR(20),
    pax_TOTAL       VARCHAR(20)
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/historico_2020.csv'
INTO TABLE stg_pasajeros_2020
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, desde_hora, hasta_hora, linea, molinete, estacion, pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL);

CREATE INDEX idx_estacion_2020 ON stg_pasajeros_2020(estacion);
CREATE INDEX idx_linea_2020    ON stg_pasajeros_2020(linea);

-- Verificaciones
SELECT estacion, COUNT(*) FROM stg_pasajeros_2020 GROUP BY estacion ORDER BY COUNT(*) DESC LIMIT 10;
SELECT linea,    COUNT(*) FROM stg_pasajeros_2020 GROUP BY linea;

-- ------------------------------------------------------------
-- 2021
-- ------------------------------------------------------------
CREATE TABLE stg_pasajeros_2021 (
    periodo         VARCHAR(20),
    fecha           VARCHAR(20),
    desde_hora      VARCHAR(20),
    hasta_hora      VARCHAR(20),
    linea           VARCHAR(10),
    molinete        VARCHAR(50),
    estacion        VARCHAR(100),
    pax_pagos       VARCHAR(20),
    pax_pases_pagos VARCHAR(20),
    pax_franq       VARCHAR(20),
    pax_TOTAL       VARCHAR(20)
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/historico_2021.csv'
INTO TABLE stg_pasajeros_2021
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(periodo, fecha, desde_hora, hasta_hora, linea, molinete, estacion, pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL);

CREATE INDEX idx_estacion_2021 ON stg_pasajeros_2021(estacion);
CREATE INDEX idx_linea_2021    ON stg_pasajeros_2021(linea);

-- Verificaciones
SELECT estacion, COUNT(*) FROM stg_pasajeros_2021 GROUP BY estacion ORDER BY COUNT(*) DESC LIMIT 10;
SELECT linea,    COUNT(*) FROM stg_pasajeros_2021 GROUP BY linea;

-- ============================================================================================================================
-- SECCIÓN 2: NORMALIZACIÓN DE NOMBRES DE ESTACIONES
-- ============================================================================================================================

-- Construir universo de todos los nombres crudos de estaciones y líneas
CREATE TABLE estacion_universo (
    estacion_cruda VARCHAR(100) PRIMARY KEY
);

CREATE TABLE linea_universo (
    linea_cruda VARCHAR(20) PRIMARY KEY
);

-- Poblar incrementalmente año por año
INSERT IGNORE INTO estacion_universo (estacion_cruda) SELECT DISTINCT estacion FROM stg_pasajeros_2014;
INSERT IGNORE INTO linea_universo    (linea_cruda)    SELECT DISTINCT linea    FROM stg_pasajeros_2014;

INSERT IGNORE INTO estacion_universo (estacion_cruda) SELECT DISTINCT estacion FROM stg_pasajeros_2015;
INSERT IGNORE INTO linea_universo    (linea_cruda)    SELECT DISTINCT linea    FROM stg_pasajeros_2015;

INSERT IGNORE INTO estacion_universo (estacion_cruda) SELECT DISTINCT estacion FROM stg_pasajeros_2016;
INSERT IGNORE INTO linea_universo    (linea_cruda)    SELECT DISTINCT linea    FROM stg_pasajeros_2016;

INSERT IGNORE INTO estacion_universo (estacion_cruda) SELECT DISTINCT estacion FROM stg_pasajeros_2017;
INSERT IGNORE INTO linea_universo    (linea_cruda)    SELECT DISTINCT linea    FROM stg_pasajeros_2017;

INSERT IGNORE INTO estacion_universo (estacion_cruda) SELECT DISTINCT estacion FROM stg_pasajeros_2018;
INSERT IGNORE INTO linea_universo    (linea_cruda)    SELECT DISTINCT linea    FROM stg_pasajeros_2018;

INSERT IGNORE INTO estacion_universo (estacion_cruda) SELECT DISTINCT estacion FROM stg_pasajeros_2019;
INSERT IGNORE INTO linea_universo    (linea_cruda)    SELECT DISTINCT linea    FROM stg_pasajeros_2019;

INSERT IGNORE INTO estacion_universo (estacion_cruda) SELECT DISTINCT estacion FROM stg_pasajeros_2020;
INSERT IGNORE INTO linea_universo    (linea_cruda)    SELECT DISTINCT linea    FROM stg_pasajeros_2020;

INSERT IGNORE INTO estacion_universo (estacion_cruda) SELECT DISTINCT estacion FROM stg_pasajeros_2021;
INSERT IGNORE INTO linea_universo    (linea_cruda)    SELECT DISTINCT linea    FROM stg_pasajeros_2021;

-- Verificación del tamaño del universo
SELECT COUNT(*) FROM estacion_universo;
SELECT COUNT(*) FROM linea_universo;

-- Vista del caos en los nombres crudos
SELECT estacion_cruda FROM estacion_universo ORDER BY estacion_cruda;
SELECT linea_cruda    FROM linea_universo    ORDER BY linea_cruda;

-- ------------------------------------------------------------
-- Pre-normalización: limpiar casos con punto final
-- ------------------------------------------------------------
-- Detectar estaciones con punto al final que también existen sin punto
SELECT * FROM estacion_universo WHERE estacion_cruda LIKE '%.';

-- Eliminar las que tienen punto final (duplicadas con la versión limpia)
DELETE FROM estacion_universo
WHERE estacion_cruda IN ('CALLAO.', 'INDEPENDENCIA.', 'PUEYRREDON.');

-- Eliminar entradas con formato ESTACION.X (ej: CALLAO.B, INDEPENDENCIA.H, PUEYRREDON.D)
-- La versión sin sufijo ya existe en el universo, por lo que estos registros son redundantes
DELETE FROM estacion_universo
WHERE estacion_cruda REGEXP '\\.[A-Z]$';

-- ------------------------------------------------------------
-- Crear columna normalizada y aplicar correcciones
-- ------------------------------------------------------------
ALTER TABLE estacion_universo ADD estacion_norm VARCHAR(100);

UPDATE estacion_universo SET estacion_norm = UPPER(TRIM(estacion_cruda));

-- Eliminar caracteres corruptos por encoding
UPDATE estacion_universo SET estacion_norm = REPLACE(estacion_norm, 'Ã', '');
UPDATE estacion_universo SET estacion_norm = REPLACE(estacion_norm, '?', '');
UPDATE estacion_universo SET estacion_norm = REPLACE(estacion_norm, '³', '');
UPDATE estacion_universo SET estacion_norm = REPLACE(estacion_norm, '±', 'N');

-- Correcciones específicas de nombres inconsistentes entre años
UPDATE estacion_universo SET estacion_norm = 'AGUERO'                   WHERE estacion_norm LIKE 'AG%ERO';
UPDATE estacion_universo SET estacion_norm = 'SAENZ PENA'               WHERE estacion_norm LIKE 'SAENZ PE%';
UPDATE estacion_universo SET estacion_norm = 'SAN JOSE DE FLORES'       WHERE estacion_norm = 'FLORES';
UPDATE estacion_universo SET estacion_norm = 'PARQUE PATRICIOS'         WHERE estacion_norm = 'PATRICIOS';
UPDATE estacion_universo SET estacion_norm = 'PLAZA DE LOS VIRREYES'    WHERE estacion_norm = 'PZA. DE LOS VIRREYES';
UPDATE estacion_universo SET estacion_norm = 'JUAN MANUEL DE ROSAS'     WHERE estacion_norm = 'ROSAS';
UPDATE estacion_universo SET estacion_norm = 'RETIRO'                   WHERE estacion_norm = 'RETIRO E';
UPDATE estacion_universo SET estacion_norm = 'LOS INCAS / PARQUE CHAS'  WHERE estacion_norm = 'LOS INCAS';
UPDATE estacion_universo SET estacion_norm = 'PASTEUR - AMIA'           WHERE estacion_norm = 'PASTEUR';
UPDATE estacion_universo SET estacion_norm = 'MALABIA / OSVALDO PUGLIESE' WHERE estacion_norm = 'MALABIA';

-- Eliminar entradas que no corresponden a estaciones operativas del sistema
-- Taller Bonifacio es un taller técnico; Catalinas se incorpora más adelante desde la fuente original
DELETE FROM estacion_universo
WHERE estacion_norm IN ('CATALINAS', 'TALLER BONIFACIO');

-- Verificación
SELECT COUNT(DISTINCT estacion_norm) FROM estacion_universo; -- Esperado: ~86

-- ============================================================================================================================
-- SECCIÓN 3: TABLA DE MAPEO (estacion_cruda → estacion_oficial)
-- ============================================================================================================================

CREATE TABLE mapa_estaciones (
    estacion_cruda   VARCHAR(120),
    estacion_oficial VARCHAR(120) NOT NULL,
    PRIMARY KEY (estacion_cruda)
);

INSERT INTO mapa_estaciones (estacion_cruda, estacion_oficial)
SELECT DISTINCT estacion_cruda, estacion_norm
FROM estacion_universo;

SELECT COUNT(*) FROM mapa_estaciones; -- Esperado: ~101 estaciones

-- ============================================================================================================================
-- SECCIÓN 4: DIMENSIONES — ESTACIÓN, LÍNEA, ESTACIÓN-LÍNEA
-- ============================================================================================================================

CREATE TABLE dim_estacion (
    id_estacion      INT AUTO_INCREMENT PRIMARY KEY,
    estacion_nombre  VARCHAR(100) UNIQUE
);

INSERT INTO dim_estacion (estacion_nombre)
SELECT DISTINCT estacion_oficial
FROM mapa_estaciones
ORDER BY estacion_oficial;

-- ------------------------------------------------------------
CREATE TABLE dim_linea (
    id_linea    INT AUTO_INCREMENT PRIMARY KEY,
    linea_nombre VARCHAR(10) UNIQUE
);

INSERT INTO dim_linea (linea_nombre) VALUES ('A'), ('B'), ('C'), ('D'), ('E'), ('H');

-- ------------------------------------------------------------
CREATE TABLE dim_estacion_linea (
    id_estacion_linea INT AUTO_INCREMENT PRIMARY KEY,
    id_estacion       INT,
    id_linea          INT,
    UNIQUE(id_estacion, id_linea),
    FOREIGN KEY (id_estacion) REFERENCES dim_estacion(id_estacion),
    FOREIGN KEY (id_linea)    REFERENCES dim_linea(id_linea)
);

-- ============================================================================================================================
-- SECCIÓN 5: TABLA STAGING UNIFICADA (stg_pasajeros_all)
-- ============================================================================================================================
-- Unifica los 8 años en una estructura homogénea con tipos de datos correctos.
-- Cada año requiere tratamiento particular por diferencias en formato de fecha, separadores, etc.

CREATE TABLE stg_pasajeros_all (
    fecha           DATE,
    desde_hora      TIME,
    hasta_hora      TIME,
    linea           VARCHAR(10),
    estacion        VARCHAR(100),
    molinete        VARCHAR(50),
    pax_pagos       INT,
    pax_pases_pagos INT,
    pax_franq       INT,
    pax_total       INT
);

-- 2014: valores 'NA' se convierten a NULL
INSERT INTO stg_pasajeros_all
SELECT fecha, desde_hora, hasta_hora, linea, estacion, molinete,
    NULLIF(pax_pago,        'NA'),
    NULLIF(pax_pases_pagos, 'NA'),
    NULLIF(pax_franq,       'NA'),
    NULLIF(pax_total,       'NA')
FROM stg_pasajeros_2014;

-- 2015
INSERT INTO stg_pasajeros_all
SELECT fecha, desde_hora, hasta_hora, linea, estacion, molinete,
    NULLIF(pax_pagos,       'NA'),
    NULLIF(pax_pases_pagos, 'NA'),
    NULLIF(pax_franq,       'NA'),
    NULLIF(total,           'NA')
FROM stg_pasajeros_2015;

-- 2016: fecha en formato dd/mm/yyyy
INSERT INTO stg_pasajeros_all
SELECT STR_TO_DATE(fecha, '%d/%m/%Y'), desde_hora, hasta_hora, linea, estacion, molinete,
    pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL
FROM stg_pasajeros_2016;

-- 2017: ídem 2016
INSERT INTO stg_pasajeros_all
SELECT STR_TO_DATE(fecha, '%d/%m/%Y'), desde_hora, hasta_hora, linea, estacion, molinete,
    pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL
FROM stg_pasajeros_2017;

-- 2018
INSERT INTO stg_pasajeros_all
SELECT fecha, desde_hora, hasta_hora, linea, estacion, molinete,
    pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL
FROM stg_pasajeros_2018
WHERE fecha <> '';

-- 2019
INSERT INTO stg_pasajeros_all
SELECT fecha, desde_hora, hasta_hora, linea, estacion, molinete,
    pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL
FROM stg_pasajeros_2019
WHERE fecha <> '';

-- 2020: mezcla de formatos dd/mm/yyyy y mm/dd/yyyy — se detecta por el primer segmento
INSERT INTO stg_pasajeros_all
SELECT
    CASE
        WHEN CAST(SUBSTRING_INDEX(fecha,'/',1) AS UNSIGNED) > 12
            THEN STR_TO_DATE(fecha, '%d/%m/%Y')
        ELSE
            STR_TO_DATE(fecha, '%m/%d/%Y')
    END,
    desde_hora, hasta_hora, linea, estacion, molinete,
    pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL
FROM stg_pasajeros_2020
WHERE fecha <> '';

-- 2021: mezcla de formatos yyyy-mm-dd, dd/mm/yyyy y mm/dd/yyyy
INSERT INTO stg_pasajeros_all
SELECT
    CASE
        WHEN fecha LIKE '%-%'
            THEN STR_TO_DATE(fecha, '%Y-%m-%d')
        WHEN CAST(SUBSTRING_INDEX(fecha,'/',1) AS UNSIGNED) > 12
            THEN STR_TO_DATE(fecha, '%d/%m/%Y')
        ELSE
            STR_TO_DATE(fecha, '%m/%d/%Y')
    END,
    desde_hora, hasta_hora, linea, estacion, molinete,
    pax_pagos, pax_pases_pagos, pax_franq, pax_TOTAL
FROM stg_pasajeros_2021
WHERE fecha <> '';

-- ------------------------------------------------------------
-- Normalización de columna linea en stg_pasajeros_all
-- Algunos años usan formato 'LINEA_A' o 'LineaA' en lugar de 'A'
-- ------------------------------------------------------------
SET SQL_SAFE_UPDATES = 0;

UPDATE stg_pasajeros_all SET linea = REPLACE(linea, 'LINEA_', '') WHERE linea LIKE 'LINEA_%';
UPDATE stg_pasajeros_all SET linea = UPPER(REPLACE(linea, 'Linea', '')) WHERE linea LIKE 'Linea%';

SET SQL_SAFE_UPDATES = 1;

-- Verificación de líneas
SELECT DISTINCT linea, COUNT(*) AS filas FROM stg_pasajeros_all GROUP BY linea ORDER BY linea;

-- ------------------------------------------------------------
-- Verificación de cobertura del mapa de estaciones
-- ------------------------------------------------------------
-- Estaciones en stg que no tienen mapeo aún
SELECT DISTINCT s.estacion
FROM stg_pasajeros_all s
LEFT JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
WHERE me.estacion_cruda IS NULL
ORDER BY s.estacion;

-- Agregar casos con sufijos que quedaron fuera del universo original
INSERT INTO mapa_estaciones (estacion_cruda, estacion_oficial) VALUES
('CALLAO.',          'CALLAO'),
('CALLAO.B',         'CALLAO'),
('INDEPENDENCIA.',   'INDEPENDENCIA'),
('INDEPENDENCIA.H',  'INDEPENDENCIA'),
('PUEYRREDON.',      'PUEYRREDON'),
('PUEYRREDON.D',     'PUEYRREDON');

-- Catalinas aparece en los datos fuente con registros operativos válidos; se incorpora como estación
INSERT INTO dim_estacion (estacion_nombre) VALUES ('CATALINAS');
INSERT INTO mapa_estaciones (estacion_cruda, estacion_oficial) VALUES ('Catalinas', 'CATALINAS');

-- Verificación final: solo debe quedar 'Taller Bonifacio' sin mapeo (descartado intencionalmente)
SELECT DISTINCT s.estacion
FROM stg_pasajeros_all s
LEFT JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
WHERE me.estacion_cruda IS NULL
ORDER BY s.estacion;

-- Conteo del impacto de Taller Bonifacio (filas que quedarán excluidas)
SELECT estacion, COUNT(*) AS filas
FROM stg_pasajeros_all
WHERE estacion IN ('Catalinas', 'Taller Bonifacio')
GROUP BY estacion;

-- ------------------------------------------------------------
-- Estadísticas generales de la staging unificada
-- ------------------------------------------------------------
SELECT COUNT(*) FROM stg_pasajeros_all;

SELECT MIN(fecha), MAX(fecha), COUNT(*) FROM stg_pasajeros_all;

SELECT YEAR(fecha) AS anio, COUNT(*) AS filas
FROM stg_pasajeros_all
GROUP BY anio
ORDER BY anio;

-- ============================================================================================================================
-- SECCIÓN 6: LIMPIEZA DE DATOS
-- ============================================================================================================================

-- ------------------------------------------------------------
-- 6.1 Identificación y tratamiento de valores faltantes (NULL)
-- ------------------------------------------------------------

-- Conteo de NULLs por columna
SELECT
    SUM(CASE WHEN pax_pagos       IS NULL THEN 1 ELSE 0 END) AS nulos_pax_pagos,
    SUM(CASE WHEN pax_pases_pagos IS NULL THEN 1 ELSE 0 END) AS nulos_pax_pases_pagos,
    SUM(CASE WHEN pax_franq       IS NULL THEN 1 ELSE 0 END) AS nulos_pax_franq,
    SUM(CASE WHEN pax_total       IS NULL THEN 1 ELSE 0 END) AS nulos_pax_total
FROM stg_pasajeros_all;

-- Distribución de NULLs por año (para entender su origen)
SELECT
    YEAR(fecha) AS anio,
    SUM(CASE WHEN pax_pases_pagos IS NULL THEN 1 ELSE 0 END) AS nulos_pax_pases_pagos,
    COUNT(*) AS total_filas
FROM stg_pasajeros_all
GROUP BY anio
ORDER BY anio;

/*
DECISIÓN SOBRE VALORES FALTANTES:
- pax_pagos: los NULLs provienen del valor 'NA' en el CSV de 2014.
  Representan registros sin pago registrado, no ausencia de dato estructural.
  Se imputan con 0.
- pax_pases_pagos, pax_franq, pax_total: los NULLs también provienen de 'NA' en 2014.
  Se conservan como NULL porque representan ausencia real de información en la fuente
  original, no un error de carga. Imputarlos con 0 alteraría la distribución histórica.
*/

SET SQL_SAFE_UPDATES = 0;

UPDATE stg_pasajeros_all SET pax_pagos = 0 WHERE pax_pagos IS NULL;

SET SQL_SAFE_UPDATES = 1;

-- Verificación post-imputación
SELECT
    SUM(CASE WHEN pax_pagos       IS NULL THEN 1 ELSE 0 END) AS nulos_pax_pagos,
    SUM(CASE WHEN pax_pases_pagos IS NULL THEN 1 ELSE 0 END) AS nulos_pax_pases_pagos,
    SUM(CASE WHEN pax_franq       IS NULL THEN 1 ELSE 0 END) AS nulos_pax_franq,
    SUM(CASE WHEN pax_total       IS NULL THEN 1 ELSE 0 END) AS nulos_pax_total
FROM stg_pasajeros_all;

-- ------------------------------------------------------------
-- 6.2 Detección y tratamiento de outliers
-- ------------------------------------------------------------

-- Estadísticas descriptivas de las variables numéricas
SELECT
    MIN(pax_total)              AS minimo,
    MAX(pax_total)              AS maximo,
    ROUND(AVG(pax_total), 2)    AS media,
    ROUND(STDDEV(pax_total), 2) AS desvio_estandar
FROM stg_pasajeros_all
WHERE pax_total IS NOT NULL;

-- Umbrales estadísticos (media ± 3 desvíos estándar)
SELECT
    ROUND(AVG(pax_total) + 3 * STDDEV(pax_total), 2) AS umbral_superior,
    ROUND(AVG(pax_total) - 3 * STDDEV(pax_total), 2) AS umbral_inferior
FROM stg_pasajeros_all
WHERE pax_total IS NOT NULL;

-- Cantidad de registros que superan el umbral superior
SELECT COUNT(*) AS outliers_superiores
FROM stg_pasajeros_all
WHERE pax_total > (
    SELECT AVG(pax_total) + 3 * STDDEV(pax_total)
    FROM stg_pasajeros_all
    WHERE pax_total IS NOT NULL
);

-- Muestra de los registros extremos para analizar su naturaleza
SELECT fecha, linea, estacion, molinete, pax_pagos, pax_franq, pax_total
FROM stg_pasajeros_all
WHERE pax_total > (
    SELECT AVG(pax_total) + 3 * STDDEV(pax_total)
    FROM stg_pasajeros_all
    WHERE pax_total IS NOT NULL
)
ORDER BY pax_total DESC
LIMIT 20;

-- Distribución por estación de los registros extremos
SELECT estacion, linea, COUNT(*) AS registros_extremos, MAX(pax_total) AS pax_maximo
FROM stg_pasajeros_all
WHERE pax_total > (
    SELECT AVG(pax_total) + 3 * STDDEV(pax_total)
    FROM stg_pasajeros_all
    WHERE pax_total IS NOT NULL
)
GROUP BY estacion, linea
ORDER BY pax_maximo DESC;

/*
DECISIÓN SOBRE OUTLIERS — VALORES EXTREMOS SUPERIORES:
Los registros con pax_total por encima del umbral (media + 3σ) corresponden a
estaciones de alta demanda en horarios pico (ej: Constitución, Once, Palermo).
Son operacionalmente válidos y representan el comportamiento real del sistema.
No se eliminan ni transforman: hacerlo distorsionaría el análisis de demanda máxima,
que es un indicador clave del proyecto.
*/

-- Verificar existencia de valores negativos (errores de carga en origen)
SELECT COUNT(*) AS registros_negativos
FROM stg_pasajeros_all
WHERE pax_total < 0 OR pax_pagos < 0 OR pax_franq < 0;

-- Eliminar registros con valores negativos
SET SQL_SAFE_UPDATES = 0;

DELETE FROM stg_pasajeros_all
WHERE pax_total < 0
   OR pax_pagos < 0
   OR pax_franq < 0;

SET SQL_SAFE_UPDATES = 1;

-- Verificación post-limpieza
SELECT COUNT(*) AS registros_negativos_restantes
FROM stg_pasajeros_all
WHERE pax_total < 0 OR pax_pagos < 0 OR pax_franq < 0;
-- Esperado: 0

-- Eliminar error puntual: molinete 'BONIFACIO_TUR02' mapeado incorrectamente a HOSPITALES
-- Todos sus registros tienen pax_total = 0 y provienen de un error en el CSV fuente de 2017
SET SQL_SAFE_UPDATES = 0;

DELETE FROM stg_pasajeros_all
WHERE molinete = 'BONIFACIO_TUR02'
  AND estacion = 'HOSPITALES';

SET SQL_SAFE_UPDATES = 1;

-- ------------------------------------------------------------
-- 6.3 Normalización y escalado de variables numéricas
-- ------------------------------------------------------------

-- Análisis comparativo de escala entre variables
SELECT
    'pax_total'  AS variable, MIN(pax_total),  MAX(pax_total),  ROUND(AVG(pax_total), 2),  ROUND(STDDEV(pax_total), 2)  FROM stg_pasajeros_all WHERE pax_total  IS NOT NULL
UNION ALL SELECT
    'pax_pagos',               MIN(pax_pagos),  MAX(pax_pagos),  ROUND(AVG(pax_pagos), 2),  ROUND(STDDEV(pax_pagos), 2)  FROM stg_pasajeros_all WHERE pax_pagos  IS NOT NULL
UNION ALL SELECT
    'pax_franq',               MIN(pax_franq),  MAX(pax_franq),  ROUND(AVG(pax_franq), 2),  ROUND(STDDEV(pax_franq), 2)  FROM stg_pasajeros_all WHERE pax_franq  IS NOT NULL;

/*
DECISIÓN SOBRE NORMALIZACIÓN / ESCALADO:
Todas las variables numéricas del dataset (pax_total, pax_pagos, pax_pases_pagos, pax_franq)
están expresadas en la misma unidad (cantidad de pasajeros) y son directamente comparables
entre sí sin transformación.

El objetivo del proyecto es análisis descriptivo y visualización en Power BI, no modelado
predictivo. Los algoritmos sensibles a escala (KNN, SVM, redes neuronales) no se aplican
en este contexto.

Conclusión: NO se aplica normalización Min-Max ni estandarización Z-score.
Mantener los datos en su escala natural de pasajeros facilita la lectura directa
e interpretación de los indicadores en el dashboard.
*/

-- ============================================================================================================================
-- SECCIÓN 7: DIMENSIÓN MOLINETE
-- ============================================================================================================================

CREATE TABLE dim_molinete (
    id_molinete INT AUTO_INCREMENT PRIMARY KEY,
    id_estacion INT NOT NULL,
    id_linea    INT NOT NULL,
    molinete    VARCHAR(50),
    molinete_norm VARCHAR(50),
    UNIQUE(id_estacion, id_linea, molinete),
    FOREIGN KEY (id_estacion) REFERENCES dim_estacion(id_estacion),
    FOREIGN KEY (id_linea)    REFERENCES dim_linea(id_linea)
);

-- Poblar desde stg_pasajeros_all usando el mapa de estaciones
-- Se excluye Taller Bonifacio por no ser una estación operativa
INSERT IGNORE INTO dim_molinete (id_estacion, id_linea, molinete)
SELECT DISTINCT
    de.id_estacion,
    dl.id_linea,
    s.molinete
FROM stg_pasajeros_all s
JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
JOIN dim_linea dl       ON dl.linea_nombre = s.linea
WHERE s.estacion != 'Taller Bonifacio';

SELECT COUNT(*) FROM dim_molinete; -- Esperado: ~1225

-- Eliminar el registro huérfano BONIFACIO_TUR02 de dim_molinete
SET SQL_SAFE_UPDATES = 0;

DELETE FROM dim_molinete WHERE molinete = 'BONIFACIO_TUR02';

SET SQL_SAFE_UPDATES = 1;

-- Normalizar nombres de molinetes (quitar prefijos de línea: LINEA_A_, LineaA_, etc.)
SET SQL_SAFE_UPDATES = 0;

UPDATE dim_molinete
SET molinete_norm = UPPER(TRIM(
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(molinete, '^LINEA_[A-Z]_', ''),
        'Linea[A-Za-z]_', ''),
    'LINEA[A-Z]_', '')
));

SET SQL_SAFE_UPDATES = 1;

-- Verificaciones
SELECT COUNT(DISTINCT molinete_norm) FROM dim_molinete;   -- Esperado: ~650
SELECT COUNT(*) FROM dim_molinete WHERE molinete_norm IS NULL OR molinete_norm = '';  -- Esperado: 0
SELECT DISTINCT molinete_norm FROM dim_molinete WHERE molinete_norm LIKE 'LINEA%';   -- Esperado: vacío

-- Índices
CREATE INDEX idx_molinete_estacion ON dim_molinete(id_estacion);
CREATE INDEX idx_molinete_linea    ON dim_molinete(id_linea);
CREATE INDEX idx_molinete_norm     ON dim_molinete(molinete_norm);

-- ============================================================================================================================
-- SECCIÓN 8: DIMENSIÓN FECHA
-- ============================================================================================================================

CREATE TABLE dim_fecha (
    fecha           DATE PRIMARY KEY,
    anio            INT,
    mes             INT,
    dia             INT,
    trimestre       INT,
    dia_semana      INT,
    nombre_mes      VARCHAR(20),
    nombre_dia      VARCHAR(20),
    es_fin_de_semana BOOLEAN,
    semana_anio     INT
);

-- Poblar con todas las fechas del período 2014–2021 mediante CTE recursiva
-- Requiere: SET SESSION cte_max_recursion_depth = 10000;

SET SESSION cte_max_recursion_depth = 10000;

INSERT INTO dim_fecha (fecha, anio, mes, dia, trimestre, dia_semana,
                       nombre_mes, nombre_dia, es_fin_de_semana, semana_anio)
WITH RECURSIVE fechas AS (
    SELECT DATE('2014-01-01') AS fecha
    UNION ALL
    SELECT DATE_ADD(fecha, INTERVAL 1 DAY) FROM fechas WHERE fecha < DATE('2021-12-31')
)
SELECT
    fecha,
    YEAR(fecha),
    MONTH(fecha),
    DAY(fecha),
    QUARTER(fecha),
    DAYOFWEEK(fecha),
    DATE_FORMAT(fecha, '%M'),
    DAYNAME(fecha),
    CASE WHEN DAYOFWEEK(fecha) IN (1,7) THEN 1 ELSE 0 END,
    WEEK(fecha, 1)
FROM fechas;

-- Traducir nombres al español
SET SQL_SAFE_UPDATES = 0;

UPDATE dim_fecha SET nombre_dia = CASE dia_semana
    WHEN 1 THEN 'Domingo'  WHEN 2 THEN 'Lunes'   WHEN 3 THEN 'Martes'
    WHEN 4 THEN 'Miercoles' WHEN 5 THEN 'Jueves'  WHEN 6 THEN 'Viernes'
    WHEN 7 THEN 'Sabado'
END;

UPDATE dim_fecha SET nombre_mes = CASE mes
    WHEN 1  THEN 'Enero'      WHEN 2  THEN 'Febrero'   WHEN 3  THEN 'Marzo'
    WHEN 4  THEN 'Abril'      WHEN 5  THEN 'Mayo'       WHEN 6  THEN 'Junio'
    WHEN 7  THEN 'Julio'      WHEN 8  THEN 'Agosto'     WHEN 9  THEN 'Septiembre'
    WHEN 10 THEN 'Octubre'    WHEN 11 THEN 'Noviembre'  WHEN 12 THEN 'Diciembre'
END;

SET SQL_SAFE_UPDATES = 1;

-- Verificaciones
SELECT COUNT(*) FROM dim_fecha;
SELECT * FROM dim_fecha WHERE fecha IN ('2014-01-01', '2020-03-20', '2021-12-31');
SELECT nombre_mes, COUNT(*) FROM dim_fecha GROUP BY mes, nombre_mes ORDER BY mes;

-- ============================================================================================================================
-- SECCIÓN 9: DIMENSIÓN HORA
-- ============================================================================================================================

CREATE TABLE dim_hora (
    id_hora         INT AUTO_INCREMENT PRIMARY KEY,
    hora_desde      TIME NOT NULL,
    hora_hasta      TIME NOT NULL,
    hora_numero     INT,
    franja_horaria  VARCHAR(30),
    UNIQUE(hora_desde, hora_hasta)
);

INSERT IGNORE INTO dim_hora (hora_desde, hora_hasta, hora_numero, franja_horaria)
SELECT DISTINCT
    desde_hora,
    hasta_hora,
    HOUR(desde_hora),
    CASE
        WHEN HOUR(desde_hora) >= 6  AND HOUR(desde_hora) < 9  THEN 'Pico Mañana'
        WHEN HOUR(desde_hora) >= 9  AND HOUR(desde_hora) < 16 THEN 'Valle'
        WHEN HOUR(desde_hora) >= 16 AND HOUR(desde_hora) < 20 THEN 'Pico Tarde'
        WHEN HOUR(desde_hora) >= 20 AND HOUR(desde_hora) < 24 THEN 'Nocturno'
        ELSE 'Madrugada'
    END
FROM stg_pasajeros_all
WHERE desde_hora IS NOT NULL;

CREATE INDEX idx_hora_desde_hasta ON dim_hora(hora_desde, hora_hasta);

SELECT * FROM dim_hora ORDER BY hora_desde;

-- ============================================================================================================================
-- SECCIÓN 10: DIMENSIÓN ESTACIÓN-LÍNEA
-- ============================================================================================================================

-- Poblar la relación N:M entre estaciones y líneas
INSERT IGNORE INTO dim_estacion_linea (id_estacion, id_linea)
SELECT DISTINCT
    de.id_estacion,
    dl.id_linea
FROM stg_pasajeros_all s
JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
JOIN dim_linea dl       ON dl.linea_nombre = s.linea;

SELECT COUNT(*) FROM dim_estacion_linea;

-- ============================================================================================================================
-- SECCIÓN 11: DIMENSIÓN ACCESIBILIDAD
-- ============================================================================================================================

CREATE TABLE dim_accesibilidad (
    id_accesibilidad    INT AUTO_INCREMENT PRIMARY KEY,
    linea               VARCHAR(5),
    estacion            VARCHAR(100),
    longitud            DECIMAL(18,15),
    latitud             DECIMAL(18,15),
    escaleras_mecanicas INT,
    ascensores          INT
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/estaciones-accesibles.csv'
INTO TABLE dim_accesibilidad
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(longitud, latitud, linea, estacion, escaleras_mecanicas, ascensores);

SELECT COUNT(*) FROM dim_accesibilidad; -- Esperado: 93

-- Corregir nombres que difieren respecto a dim_estacion
SET SQL_SAFE_UPDATES = 0;

UPDATE dim_accesibilidad SET estacion = 'GENERAL BELGRANO'          WHERE estacion = 'BELGRANO';
UPDATE dim_accesibilidad SET estacion = 'MINISTRO CARRANZA'         WHERE estacion = 'CARRANZA';
UPDATE dim_accesibilidad SET estacion = 'HUMBERTO I'                WHERE estacion = 'HUMBERTO 1°';
UPDATE dim_accesibilidad SET estacion = 'LEANDRO N. ALEM'           WHERE estacion = 'LEANDRO ALEM';
UPDATE dim_accesibilidad SET estacion = 'LOS INCAS / PARQUE CHAS'   WHERE estacion = 'LOS INCAS';
UPDATE dim_accesibilidad SET estacion = 'MALABIA / OSVALDO PUGLIESE' WHERE estacion = 'MALABIA';
UPDATE dim_accesibilidad SET estacion = 'MARIANO MORENO'            WHERE estacion = 'MORENO' AND linea = 'C';
UPDATE dim_accesibilidad SET estacion = 'PASTEUR - AMIA'            WHERE estacion = 'PASTEUR';
UPDATE dim_accesibilidad SET estacion = 'GENERAL SAN MARTIN'        WHERE estacion = 'SAN MARTIN';

SET SQL_SAFE_UPDATES = 1;

-- Verificar que no quedan huérfanos
SELECT a.estacion, a.linea
FROM dim_accesibilidad a
LEFT JOIN dim_estacion de ON a.estacion = de.estacion_nombre
WHERE de.estacion_nombre IS NULL
ORDER BY a.estacion;

-- Agregar id_estacion
ALTER TABLE dim_accesibilidad ADD id_estacion INT;

SET SQL_SAFE_UPDATES = 0;

UPDATE dim_accesibilidad a
JOIN dim_estacion de ON a.estacion = de.estacion_nombre
SET a.id_estacion = de.id_estacion;

SET SQL_SAFE_UPDATES = 1;

SELECT COUNT(*) FROM dim_accesibilidad WHERE id_estacion IS NULL; -- Esperado: 0

-- Agregar con valores 0 las estaciones sin datos de accesibilidad en el CSV fuente
INSERT INTO dim_accesibilidad (id_estacion, linea, estacion, escaleras_mecanicas, ascensores)
SELECT
    de.id_estacion,
    dl.linea_nombre,
    de.estacion_nombre,
    0,
    0
FROM dim_estacion de
JOIN dim_estacion_linea del ON de.id_estacion = del.id_estacion
JOIN dim_linea dl           ON del.id_linea = dl.id_linea
WHERE de.estacion_nombre IN ('ALBERTI', 'PASCO', 'PLAZA DE LOS VIRREYES', 'RIO DE JANEIRO', 'SCALABRINI ORTIZ');

-- Eliminar duplicados conservando el id_accesibilidad más bajo de cada grupo estación/línea
SET SQL_SAFE_UPDATES = 0;

DELETE da1 FROM dim_accesibilidad da1
INNER JOIN dim_accesibilidad da2
WHERE da1.id_accesibilidad > da2.id_accesibilidad
  AND da1.id_estacion = da2.id_estacion
  AND da1.linea = da2.linea;

SET SQL_SAFE_UPDATES = 1;

-- Eliminar registro fantasma sin nombre de estación
SET SQL_SAFE_UPDATES = 0;
DELETE FROM dim_estacion WHERE id_estacion = 1;
SET SQL_SAFE_UPDATES = 1;

SELECT COUNT(DISTINCT id_estacion) FROM dim_accesibilidad; -- Esperado: 86

-- ============================================================================================================================
-- SECCIÓN 12: DIMENSIÓN TARIFA
-- ============================================================================================================================

CREATE TABLE dim_tarifa (
    id_tarifa   INT AUTO_INCREMENT PRIMARY KEY,
    anio        INT,
    mes_numero  INT,
    mes         VARCHAR(20),
    precio      DECIMAL(6,2)
);

LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/registro-historico-del-precio-del-boleto.csv'
INTO TABLE dim_tarifa
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(anio, mes_numero, mes, precio);

-- Completar con datos faltantes 2019–2021 desde fuente oficial del Gobierno de la Ciudad
INSERT INTO dim_tarifa (anio, mes_numero, mes, precio) VALUES
(2019, 5,  'MAYO',        19.00), (2019, 6,  'JUNIO',       19.00), (2019, 7,  'JULIO',      19.00),
(2019, 8,  'AGOSTO',      19.00), (2019, 9,  'SEPTIEMBRE',  19.00), (2019, 10, 'OCTUBRE',    19.00),
(2019, 11, 'NOVIEMBRE',   19.00), (2019, 12, 'DICIEMBRE',   19.00),
(2020, 1,  'ENERO',       21.00), (2020, 2,  'FEBRERO',     21.00), (2020, 3,  'MARZO',      21.00),
(2020, 4,  'ABRIL',       21.00), (2020, 5,  'MAYO',        21.00), (2020, 6,  'JUNIO',      21.00),
(2020, 7,  'JULIO',       21.00), (2020, 8,  'AGOSTO',      21.00), (2020, 9,  'SEPTIEMBRE', 21.00),
(2020, 10, 'OCTUBRE',     21.00), (2020, 11, 'NOVIEMBRE',   21.00), (2020, 12, 'DICIEMBRE',  21.00),
(2021, 1,  'ENERO',       21.00), (2021, 2,  'FEBRERO',     21.00), (2021, 3,  'MARZO',      25.50),
(2021, 4,  'ABRIL',       30.00), (2021, 5,  'MAYO',        30.00), (2021, 6,  'JUNIO',      30.00),
(2021, 7,  'JULIO',       30.00), (2021, 8,  'AGOSTO',      30.00), (2021, 9,  'SEPTIEMBRE', 30.00),
(2021, 10, 'OCTUBRE',     30.00), (2021, 11, 'NOVIEMBRE',   30.00), (2021, 12, 'DICIEMBRE',  30.00);

SELECT anio, mes_numero, precio FROM dim_tarifa WHERE anio BETWEEN 2019 AND 2021 ORDER BY anio, mes_numero;

-- ============================================================================================================================
-- SECCIÓN 13: TABLA DE HECHOS PRINCIPAL (fact_pasajeros)
-- ============================================================================================================================

-- Verificación previa: cuántas filas de stg_pasajeros_all tienen molinete resuelto
SELECT
    COUNT(*) AS total_filas,
    COUNT(dm.id_molinete) AS filas_con_molinete,
    COUNT(*) - COUNT(dm.id_molinete) AS filas_huerfanas
FROM stg_pasajeros_all s
LEFT JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
LEFT JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
LEFT JOIN dim_linea dl       ON dl.linea_nombre = s.linea
LEFT JOIN dim_molinete dm
    ON dm.id_estacion = de.id_estacion
    AND dm.id_linea = dl.id_linea
    AND dm.molinete = s.molinete;
-- Las filas huérfanas corresponden a Taller Bonifacio y quedan excluidas por el INNER JOIN

CREATE TABLE fact_pasajeros (
    id_hecho        BIGINT AUTO_INCREMENT PRIMARY KEY,
    fecha           DATE NOT NULL,
    id_molinete     INT  NOT NULL,
    id_hora         INT,
    pax_pagos       INT,
    pax_pases_pagos INT,
    pax_franq       INT,
    pax_total       INT,
    FOREIGN KEY (fecha)       REFERENCES dim_fecha(fecha),
    FOREIGN KEY (id_molinete) REFERENCES dim_molinete(id_molinete),
    FOREIGN KEY (id_hora)     REFERENCES dim_hora(id_hora)
);

-- Carga año por año para evitar timeouts en tablas grandes
-- 2014
INSERT INTO fact_pasajeros (fecha, id_molinete, id_hora, pax_pagos, pax_pases_pagos, pax_franq, pax_total)
SELECT s.fecha, dm.id_molinete, dh.id_hora, s.pax_pagos, s.pax_pases_pagos, s.pax_franq, s.pax_total
FROM stg_pasajeros_all s
JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
JOIN dim_linea dl       ON dl.linea_nombre = s.linea
JOIN dim_molinete dm    ON dm.id_estacion = de.id_estacion AND dm.id_linea = dl.id_linea AND dm.molinete = s.molinete
JOIN dim_hora dh        ON s.desde_hora = dh.hora_desde AND s.hasta_hora = dh.hora_hasta
WHERE YEAR(s.fecha) = 2014;
SELECT COUNT(*) FROM fact_pasajeros; -- 10.857.244

-- 2015
INSERT INTO fact_pasajeros (fecha, id_molinete, id_hora, pax_pagos, pax_pases_pagos, pax_franq, pax_total)
SELECT s.fecha, dm.id_molinete, dh.id_hora, s.pax_pagos, s.pax_pases_pagos, s.pax_franq, s.pax_total
FROM stg_pasajeros_all s
JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
JOIN dim_linea dl       ON dl.linea_nombre = s.linea
JOIN dim_molinete dm    ON dm.id_estacion = de.id_estacion AND dm.id_linea = dl.id_linea AND dm.molinete = s.molinete
JOIN dim_hora dh        ON s.desde_hora = dh.hora_desde AND s.hasta_hora = dh.hora_hasta
WHERE YEAR(s.fecha) = 2015;
SELECT COUNT(*) FROM fact_pasajeros; -- 21.815.826

-- 2016
INSERT INTO fact_pasajeros (fecha, id_molinete, id_hora, pax_pagos, pax_pases_pagos, pax_franq, pax_total)
SELECT s.fecha, dm.id_molinete, dh.id_hora, s.pax_pagos, s.pax_pases_pagos, s.pax_franq, s.pax_total
FROM stg_pasajeros_all s
JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
JOIN dim_linea dl       ON dl.linea_nombre = s.linea
JOIN dim_molinete dm    ON dm.id_estacion = de.id_estacion AND dm.id_linea = dl.id_linea AND dm.molinete = s.molinete
JOIN dim_hora dh        ON s.desde_hora = dh.hora_desde AND s.hasta_hora = dh.hora_hasta
WHERE YEAR(s.fecha) = 2016;
SELECT COUNT(*) FROM fact_pasajeros; -- 33.358.148

-- 2017
INSERT INTO fact_pasajeros (fecha, id_molinete, id_hora, pax_pagos, pax_pases_pagos, pax_franq, pax_total)
SELECT s.fecha, dm.id_molinete, dh.id_hora, s.pax_pagos, s.pax_pases_pagos, s.pax_franq, s.pax_total
FROM stg_pasajeros_all s
JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
JOIN dim_linea dl       ON dl.linea_nombre = s.linea
JOIN dim_molinete dm    ON dm.id_estacion = de.id_estacion AND dm.id_linea = dl.id_linea AND dm.molinete = s.molinete
JOIN dim_hora dh        ON s.desde_hora = dh.hora_desde AND s.hasta_hora = dh.hora_hasta
WHERE YEAR(s.fecha) = 2017;
SELECT COUNT(*) FROM fact_pasajeros; -- 45.296.597

-- 2018
INSERT INTO fact_pasajeros (fecha, id_molinete, id_hora, pax_pagos, pax_pases_pagos, pax_franq, pax_total)
SELECT s.fecha, dm.id_molinete, dh.id_hora, s.pax_pagos, s.pax_pases_pagos, s.pax_franq, s.pax_total
FROM stg_pasajeros_all s
JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
JOIN dim_linea dl       ON dl.linea_nombre = s.linea
JOIN dim_molinete dm    ON dm.id_estacion = de.id_estacion AND dm.id_linea = dl.id_linea AND dm.molinete = s.molinete
JOIN dim_hora dh        ON s.desde_hora = dh.hora_desde AND s.hasta_hora = dh.hora_hasta
WHERE YEAR(s.fecha) = 2018;
SELECT COUNT(*) FROM fact_pasajeros; -- 57.354.788

-- 2019
INSERT INTO fact_pasajeros (fecha, id_molinete, id_hora, pax_pagos, pax_pases_pagos, pax_franq, pax_total)
SELECT s.fecha, dm.id_molinete, dh.id_hora, s.pax_pagos, s.pax_pases_pagos, s.pax_franq, s.pax_total
FROM stg_pasajeros_all s
JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
JOIN dim_linea dl       ON dl.linea_nombre = s.linea
JOIN dim_molinete dm    ON dm.id_estacion = de.id_estacion AND dm.id_linea = dl.id_linea AND dm.molinete = s.molinete
JOIN dim_hora dh        ON s.desde_hora = dh.hora_desde AND s.hasta_hora = dh.hora_hasta
WHERE YEAR(s.fecha) = 2019;
SELECT COUNT(*) FROM fact_pasajeros; -- 70.017.131

-- 2020
INSERT INTO fact_pasajeros (fecha, id_molinete, id_hora, pax_pagos, pax_pases_pagos, pax_franq, pax_total)
SELECT s.fecha, dm.id_molinete, dh.id_hora, s.pax_pagos, s.pax_pases_pagos, s.pax_franq, s.pax_total
FROM stg_pasajeros_all s
JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
JOIN dim_linea dl       ON dl.linea_nombre = s.linea
JOIN dim_molinete dm    ON dm.id_estacion = de.id_estacion AND dm.id_linea = dl.id_linea AND dm.molinete = s.molinete
JOIN dim_hora dh        ON s.desde_hora = dh.hora_desde AND s.hasta_hora = dh.hora_hasta
WHERE YEAR(s.fecha) = 2020;
SELECT COUNT(*) FROM fact_pasajeros; -- 75.796.301

-- 2021
INSERT INTO fact_pasajeros (fecha, id_molinete, id_hora, pax_pagos, pax_pases_pagos, pax_franq, pax_total)
SELECT s.fecha, dm.id_molinete, dh.id_hora, s.pax_pagos, s.pax_pases_pagos, s.pax_franq, s.pax_total
FROM stg_pasajeros_all s
JOIN mapa_estaciones me ON s.estacion = me.estacion_cruda
JOIN dim_estacion de    ON me.estacion_oficial = de.estacion_nombre
JOIN dim_linea dl       ON dl.linea_nombre = s.linea
JOIN dim_molinete dm    ON dm.id_estacion = de.id_estacion AND dm.id_linea = dl.id_linea AND dm.molinete = s.molinete
JOIN dim_hora dh        ON s.desde_hora = dh.hora_desde AND s.hasta_hora = dh.hora_hasta
WHERE YEAR(s.fecha) = 2021;
SELECT COUNT(*) FROM fact_pasajeros; -- 83.867.981

-- Índices para fact_pasajeros
CREATE INDEX idx_fact_fecha          ON fact_pasajeros(fecha);
CREATE INDEX idx_fact_molinete       ON fact_pasajeros(id_molinete);
CREATE INDEX idx_fact_fecha_molinete ON fact_pasajeros(fecha, id_molinete);

-- Verificación post-carga
SELECT COUNT(*) FROM fact_pasajeros WHERE id_hora IS NULL; -- Esperado: 0

SELECT
    YEAR(fecha) AS anio,
    COUNT(*)    AS filas,
    SUM(pax_total)  AS total_pasajeros,
    SUM(pax_pagos)  AS total_pagos,
    SUM(pax_franq)  AS total_franquicias
FROM fact_pasajeros
GROUP BY anio
ORDER BY anio;

-- ============================================================================================================================
-- SECCIÓN 14: TABLA RESUMEN (fact_resumen)
-- ============================================================================================================================

CREATE TABLE fact_resumen AS # TENGO QUE CONTINUAR A PARTIR DE ACA <----
SELECT
    DATE_FORMAT(fecha, '%Y-%m-%d') AS fecha_dia,
    id_molinete,
    COALESCE(id_hora, 0)               AS id_hora,
    SUM(COALESCE(pax_pagos, 0))        AS total_pax_pagos,
    SUM(COALESCE(pax_pases_pagos, 0))  AS total_pax_pases_pagos,
    SUM(COALESCE(pax_franq, 0))        AS total_pax_franq,
    SUM(COALESCE(pax_total, 0))        AS total_pax_total
FROM fact_pasajeros
GROUP BY
    DATE_FORMAT(fecha, '%Y-%m-%d'),
    id_molinete,
    COALESCE(id_hora, 0);

CREATE INDEX idx_resumen_fecha    ON fact_resumen(fecha_dia);
CREATE INDEX idx_resumen_molinete ON fact_resumen(id_molinete);

-- ============================================================================================================================
-- SECCIÓN 15: VERIFICACIÓN FINAL DE CARDINALIDAD
-- ============================================================================================================================

-- Estado general de todas las tablas del modelo
SELECT 'fact_pasajeros'    AS tabla, COUNT(*) AS filas FROM fact_pasajeros   UNION ALL
SELECT 'dim_fecha',                  COUNT(*)          FROM dim_fecha         UNION ALL
SELECT 'dim_molinete',               COUNT(*)          FROM dim_molinete      UNION ALL
SELECT 'dim_estacion',               COUNT(*)          FROM dim_estacion      UNION ALL
SELECT 'dim_linea',                  COUNT(*)          FROM dim_linea         UNION ALL
SELECT 'dim_estacion_linea',         COUNT(*)          FROM dim_estacion_linea UNION ALL
SELECT 'dim_hora',                   COUNT(*)          FROM dim_hora          UNION ALL
SELECT 'dim_accesibilidad',          COUNT(*)          FROM dim_accesibilidad UNION ALL
SELECT 'dim_tarifa',                 COUNT(*)          FROM dim_tarifa
ORDER BY filas DESC;

-- Verificaciones de integridad referencial
SELECT COUNT(DISTINCT id_molinete) AS molinetes_en_fact FROM fact_pasajeros;  -- 1225
SELECT COUNT(*)                    AS molinetes_en_dim  FROM dim_molinete;     -- 1225

SELECT COUNT(DISTINCT fecha)       AS fechas_en_fact    FROM fact_pasajeros;  -- 2885
SELECT COUNT(*)                    AS fechas_en_dim      FROM dim_fecha;       -- 2922 (diferencia = días sin servicio)

-- Verificar franja horaria
SELECT
    dh.franja_horaria,
    COUNT(*)          AS filas,
    SUM(f.pax_total)  AS total_pasajeros
FROM fact_pasajeros f
JOIN dim_hora dh ON f.id_hora = dh.id_hora
GROUP BY dh.franja_horaria
ORDER BY total_pasajeros DESC;

-- ============================================================================================================================
-- SECCIÓN 16: EXPORTACIÓN DE TABLAS FINALES A CSV (para Power BI)
-- ============================================================================================================================

SELECT 'fecha_dia','id_molinete','id_hora','total_pax_pagos','total_pax_pases_pagos','total_pax_franq','total_pax_total'
UNION ALL
SELECT fecha_dia, id_molinete, id_hora, total_pax_pagos, total_pax_pases_pagos, total_pax_franq, total_pax_total
FROM fact_resumen
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/fact_resumen.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'estacion_nombre','id_estacion'
UNION ALL
SELECT estacion_nombre, id_estacion FROM dim_estacion
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dim_estacion.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'fecha','anio','mes','dia','trimestre','dia_semana','nombre_mes','nombre_dia','es_fin_de_semana','semana_anio'
UNION ALL
SELECT fecha, anio, mes, dia, trimestre, dia_semana, nombre_mes, nombre_dia, es_fin_de_semana, semana_anio
FROM dim_fecha
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dim_fecha.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'id_hora','hora_desde','hora_hasta','hora_numero','franja_horaria'
UNION ALL
SELECT id_hora, hora_desde, hora_hasta, hora_numero, franja_horaria FROM dim_hora
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dim_hora.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'id_linea','linea_nombre'
UNION ALL
SELECT id_linea, linea_nombre FROM dim_linea
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dim_linea.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'id_molinete','id_estacion','id_linea','molinete','molinete_norm'
UNION ALL
SELECT id_molinete, id_estacion, id_linea, molinete, molinete_norm FROM dim_molinete
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dim_molinete.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'linea','estacion','longitud','latitud','escaleras_mecanicas','ascensores','id_estacion','id_accesibilidad'
UNION ALL
SELECT linea, estacion, longitud, latitud, escaleras_mecanicas, ascensores, id_estacion, id_accesibilidad
FROM dim_accesibilidad
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dim_accesibilidad.csv'
FIELDS TERMINATED BY ';' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'id_tarifa','anio','mes_numero','mes','precio'
UNION ALL
SELECT id_tarifa, anio, mes_numero, mes, precio FROM dim_tarifa
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dim_tarifa.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT 'id_estacion_linea','id_estacion','id_linea'
UNION ALL
SELECT id_estacion_linea, id_estacion, id_linea FROM dim_estacion_linea
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dim_estacion_linea.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

-- ============================================================================================================================
-- FIN DEL SCRIPT
-- Tablas del modelo final (conectar a Power BI):
--   fact_pasajeros, fact_resumen
--   dim_fecha, dim_hora, dim_molinete, dim_estacion, dim_linea
--   dim_estacion_linea, dim_accesibilidad, dim_tarifa
--
-- Tablas staging (NO conectar a Power BI):
--   stg_pasajeros_2014 … stg_pasajeros_2021, stg_pasajeros_all
--   estacion_universo, linea_universo, estacion_pre_normalizada, mapa_estaciones
-- ============================================================================================================================

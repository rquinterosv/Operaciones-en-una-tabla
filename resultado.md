Post=# \d Posts;
                                             Tabla «public.posts»
    Columna     |              Tipo              | Ordenamiento | Nulable  |            Por omisión            
----------------+--------------------------------+--------------+----------+-----------------------------------
 id             | integer                        |              | not null | nextval('posts_id_seq'::regclass)
 nombre_usuario | character varying(30)          |              |          | 
 fecha_creacion | timestamp(6) without time zone |              |          | 
 contenido      | character varying(30)          |              |          | 
 descripcion    | character varying(30)          |              |          | 
Índices:
    "posts_pkey" PRIMARY KEY, btree (id)

Post=# INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', '31/08/2021', 'post 1', 'des1');
INSERT 0 1
Post=# INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', '31/08/2021', 'post 2', 'des1');
INSERT 0 1
Post=# INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Carlos', '31/08/2021', 'post 1', 'des1');
INSERT 0 1

Post=# SELECT * FROM Posts;
 id | nombre_usuario |   fecha_creacion    | contenido | descripcion 
----+----------------+---------------------+-----------+-------------
  1 | Pamela         | 2021-08-31 00:00:00 | post 1    | des1
  2 | Pamela         | 2021-08-31 00:00:00 | post 2    | des1
  3 | Carlos         | 2021-08-31 00:00:00 | post 1    | des1
(3 filas)

Post=# ALTER TABLE Posts ADD titulo VARCHAR;
ALTER TABLE
Post=# UPDATE Posts SET  titulo 'ti1' WHERE id=1;
ERROR:  error de sintaxis en o cerca de «'ti1'»
LÍNEA 1: UPDATE Posts SET  titulo 'ti1' WHERE id=1;
                                  ^
Post=# UPDATE Posts SET  titulo 'ti2' WHERE id=2;
ERROR:  error de sintaxis en o cerca de «'ti2'»
LÍNEA 1: UPDATE Posts SET  titulo 'ti2' WHERE id=2;
                                  ^
Post=# UPDATE Posts SET  titulo='ti1' WHERE id=1;
UPDATE 1
Post=# UPDATE Posts SET  titulo='ti2' WHERE id=2;
UPDATE 1
Post=# UPDATE Posts SET  titulo='ti3' WHERE id=3;
UPDATE 1
Post=# INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '31/08/2021', 'post 1', 'des1', 't1')
Post-# ;
INSERT 0 1
Post=# INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '31/08/2021', 'post 2', 'des1', 't2');
INSERT 0 1
Post=# INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Carlos', '31/08/2021', 'post 3', 'des1', 't3');
INSERT 0 1
Post=# CREATE TABLE comentarios(id_Posts int,fecha timestamp, hora_de_creacion timestamp, contenido VARCHAR(30));
CREATE TABLE
Post=# SELECT * FORM Posts
Post-# ;
ERROR:  error de sintaxis en o cerca de «FORM»
LÍNEA 1: SELECT * FORM Posts
                  ^
Post=# SELECT * FROM Posts;
 id | nombre_usuario |   fecha_creacion    | contenido | descripcion | titulo 
----+----------------+---------------------+-----------+-------------+--------
  1 | Pamela         | 2021-08-31 00:00:00 | post 1    | des1        | ti1
  2 | Pamela         | 2021-08-31 00:00:00 | post 2    | des1        | ti2
  3 | Carlos         | 2021-08-31 00:00:00 | post 1    | des1        | ti3
  4 | Pedro          | 2021-08-31 00:00:00 | post 1    | des1        | t1
  5 | Pedro          | 2021-08-31 00:00:00 | post 2    | des1        | t2
  6 | Carlos         | 2021-08-31 00:00:00 | post 3    | des1        | t3
(6 filas)

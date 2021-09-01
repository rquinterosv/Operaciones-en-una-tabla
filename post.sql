
DROP TABLE IF EXISTS comentarios;
DROP TABLE IF EXISTS Posts;

CREATE TABLE Posts(
    id SERIAL,
    nombre_usuario VARCHAR(30),
    fecha_creacion timestamp,
    contenido VARCHAR(30),
    descripcion VARCHAR(30),
    primary key (id)
) ;

INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', '31/08/2021', 'post 1', 'des1')
INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', '31/08/2021', 'post 2', 'des1')
INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Carlos', '31/08/2021', 'post 1', 'des1')

ALTER TABLE Posts ADD titulo VARCHAR;

UPDATE Posts SET  titulo='ti1' WHERE id=1;
UPDATE Posts SET  titulo='ti2' WHERE id=2;
UPDATE Posts SET  titulo='ti3' WHERE id=3;

INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '31/08/2021', 'post 1', 'des1', 't1')
INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '31/08/2021', 'post 2', 'des1', 't2')

--aqui me falta eliminar el comentario de Carlos 

INSERT INTO Posts (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Carlos', '31/08/2021', 'post 3', 'des1', 't3')


CREATE TABLE comentarios(
  id_Posts int,
  fecha timestamp(30)
  hora_de_creacion timestamp(30)
  contenido VARCHAR(30),
);
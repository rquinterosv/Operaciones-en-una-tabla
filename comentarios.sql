DROP TABLE IF EXISTS comentarios;

CREATE TABLE comentarios(
    id SERIAL,
    fecha timestamp(30)
    hora_de_creacion timestamp(30)
    contenido VARCHAR(30)
    primary key (id)
) ;
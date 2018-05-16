CREATE DATABASE zooDog;
use zooDog;

create table perros(
id INTEGER (10) primary key AUTO_INCREMENT,
nombre VARCHAR (50),
grupo VARCHAR (50),
personalidad VARCHAR (50),
nivelEnergia VARCHAR (50),
descripcion VARCHAR (100),
estado boolean #true popular
);
INSERT INTO perros VALUES (5,'German Shepherd Dog','Herding','Smart, confident, courageus','very active','generally considered dogdoms finest all-porpuse workers....',true);

create table comentarios(
id INTEGER (10) primary key AUTO_INCREMENT,
nombre VARCHAR (25),
fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
comentario VARCHAR (50)
);
INSERT INTO comentarios VALUES (1,'LOVE_DOG',null,'GENIAL!');

select * from perros;
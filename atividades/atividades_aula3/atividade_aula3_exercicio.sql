CREATE TABLE user (
  userId integer not null,
  nome varchar(254) not null,
  email varchar(254) not null,
  data_nascimento date not null,
  cpf char(14) not null,
  primary key(userId)
);

insert into user values(01, 'Gabriel Azevedo', 'gabriel@gmail.com', '2007/10/12', '123.456.789-10');
insert into user values(02, 'Yuri Chaves', 'yuri@gmail.com', '2007/08/01', '234.423.333-12');
insert into user values(03, 'Jose Valdo', 'josevaldo231@gmail.com', '1960/12/21', '312.323.454-10');
insert into user values(04, 'Joe de Tal', 'joedetal@gmail.com', '2000/10/23', '653.655.434-43');
insert into user values(05, 'Katarina Santana', 'katarinasantana@gmail.com', '2009/02/16', '885.323.554-60');
insert into user values(06, 'Jotaro Kujo', 'jotarokujo@gmail.com', '1970/06/14', '565.443.769-75');
insert into user values(07, 'Dio Brando', 'diobrando@gmail.com', '1880/04/01', '777.777.777-77');
insert into user values(08, 'Guido Kruger', 'guidokruger@gmail.com', '1987/07/23', '544.232.555-23');
insert into user values(09, 'Johnny Joestar', 'johnnyjoestar@gmail.com', '1880/10/12', '432.323.425-21');
insert into user values(10, 'Gyro Zeppeli', 'gyrozeppeli@gmail.com', '1880/11/25', '322.656.357-23');

SELECT * FROM user;

create table endereco(
  id integer,
  user_id integer,
  primary key(id),
  foreign key (user_id) references user (userId),
  cidade varchar(254) not null,
  bairro varchar(254) not null,
  rua varchar(254) not null,
  numero varchar(10) not null,
  complemento text
);

insert into endereco values(01, 01, 'Salvador', 'Itapuã', 'Dorival caymmi', '3100', 'Em frente à farmacia');

select * from endereco;

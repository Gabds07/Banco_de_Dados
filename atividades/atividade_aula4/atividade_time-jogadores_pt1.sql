create table jogadores(
	id int auto_increment primary key unique,
    nome varchar(254) not null,
    numero_camisa int not null
);

describe jogadores;

alter table jogadores add altura int;
alter table jogadores add data_de_nascimento date;

drop table jogadores;

show tables;

create table jogadores(
	id int auto_increment primary key unique,
    nome varchar(254) not null,
    numero_camisa int not null unique,
    data_de_nascimento date not null,
    altura int not null
);

insert into jogadores (nome, numero_camisa, data_de_nascimento, altura) values("A", 15, '2004-12-10', 175);
insert into jogadores (nome, numero_camisa, data_de_nascimento, altura) values("B", 23, '2002-10-10', 185);
insert into jogadores (nome, numero_camisa, data_de_nascimento, altura) values("C", 76, '2010-03-25', 165);
insert into jogadores (nome, numero_camisa, data_de_nascimento, altura) values("D", 09, '2001-08-14', 167);
insert into jogadores (nome, numero_camisa, data_de_nascimento, altura) values("E", 53, '2002-06-20', 173);
insert into jogadores (nome, numero_camisa, data_de_nascimento, altura) values("F", 67, '2000-05-30', 185);
insert into jogadores (nome, numero_camisa, data_de_nascimento, altura) values("G", 55, '2000-01-31', 175);
insert into jogadores (nome, numero_camisa, data_de_nascimento, altura) values("H", 02, '1995-11-13', 155);
insert into jogadores (nome, numero_camisa, data_de_nascimento, altura) values("I", 69, '2005-09-10', 152);
insert into jogadores (nome, numero_camisa, data_de_nascimento, altura) values("J", 101, '1998-04-10', 195);

truncate table jogadores;

alter table jogadores modify numero_camisa varchar(3);

alter table jogadores change data_de_nascimento data_nsc date;

insert into jogadores (nome, numero_camisa, data_nsc, altura) values("A", '15', '2004-12-10', 175);
insert into jogadores (nome, numero_camisa, data_nsc, altura) values("B", '23', '2002-10-10', 185);
insert into jogadores (nome, numero_camisa, data_nsc, altura) values("C", '76', '2010-03-25', 165);
insert into jogadores (nome, numero_camisa, data_nsc, altura) values("D", '09', '2001-08-14', 167);
insert into jogadores (nome, numero_camisa, data_nsc, altura) values("E", '53', '2002-06-20', 173);
insert into jogadores (nome, numero_camisa, data_nsc, altura) values("F", '67', '2000-05-30', 185);
insert into jogadores (nome, numero_camisa, data_nsc, altura) values("G", '55', '2000-01-31', 175);
insert into jogadores (nome, numero_camisa, data_nsc, altura) values("H", '02', '1995-11-13', 155);
insert into jogadores (nome, numero_camisa, data_nsc, altura) values("I", '69', '2005-09-10', 152);
insert into jogadores (nome, numero_camisa, data_nsc, altura) values("J", '101', '1998-04-10', 195);

select * from jogadores;


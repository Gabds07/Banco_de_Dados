create table distribuidor(
    id int not null primary key,
    nome varchar(254)
);

insert distribuidor values(1, 'Auto shopping');

create table cliente(
    id int not null,
    cpf char(14) not null,
    nome varchar(254) not null,
    email varchar(254) not null,
    primary key (id)
);

insert cliente values(1, '123.456.789-10', 'Gabriel Azevedo', 'gabriel@gmail.com');

create table vendedor(
    id int not null,
    cpf char(14) not null,
    nome varchar(254) not null,
    email varchar(254) not null,
    primary key (id)
);

insert vendedor values(1, '133.756.789-10', 'Gustavo Azevedo', 'gustavo@gmail.com');

create table carro(
    id int not null,
    cliente_id int not null,
    primary key(id),
    foreign key (cliente_id) references cliente (id),
    cor char(15) not null,
    preco float not null,
    modelo varchar(254) not null
);

insert carro values(1, 1, 'prata', 25.000, 'celta');

create table venda(
    venda_id int not null,
    cliente_id int not null,
    vendedor_id int not null,
    carro_id int not null,
    primary key(venda_id),
    foreign key (cliente_id) references cliente(id),
    foreign key (carro_id) references carro(id),
    foreign key (vendedor_id) references vendedor(id),
    data_venda date
);

insert venda values(1, 1, 1, 1, '2026/02/24');

select * from distribuidor;
select * from cliente;
select * from vendedor;
select * from carro;
select * from venda;

create table cliente(
    id int not null,
    cpf char(14) not null,
    nome varchar(254) not null,
    email varchar(254) not null
);

insert cliente values(1, '123.456.789-10', 'Gabriel Azevedo', 'gabriel@gmail.com');

select * from cliente;

create table carro(
    carro_id int not null,
    cliente_id int not null,
    primary key(carro_id),
    foreign key(cliente_id) references clientes (id),
    cor char(15) not null,
    preco float not null,
    modelo varchar(254) not null
);

insert carro values(1, 1, 'prata', 25.000, 'celta');

select * from carro;

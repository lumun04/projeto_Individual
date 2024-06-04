create database byteNexus;
use byteNexus;

create table usuario (
    id int primary key auto_increment,
    nome varchar(45),
    email varchar(100),
    senha varchar(45)
);

select * from usuario;

create table contato (
    idContato int primary key auto_increment,
    nome varchar(45),
    assunto varchar(45),
    mensagem varchar(100)
);

select * from duvida;

create table usuario_contato (
    usuarioId int,
    contatoId int,
    foreign key (usuarioId) references usuario(id),
    foreign key (contatoId) references contato(idContato),
    primary key (usuarioId, contatoId)
);

select * from usuario_contato;
create database db_produtos;

use db_produtos;

create table prod(
id_produto bigint auto_increment,
produto varchar (255)not null,
quantidade int (255) not null,
tipo varchar (255) not null,
setor varchar(255) not null,
preço decimal (7, 2) not null,
primary key (id_produto)
);


insert into prod(produto, quantidade, tipo, setor, preço) values ("Shorts", 30, "Jeans", "Feminino", 59.90),
						("Camiseta", 63, "Regata", "Masculino", 29.90),
						("Camiseta", 28, "Manga longa", "Feminino", 69.90),
						("Camiseta", 25, "Gola V", "Feminino", 19.90),
						("Calça", 20, "Jeans", "Masculino", 99.99),
						("Calça", 13, "Legging", "Feminino", 29.90),
						("Blusa", 33, "Moletom", "Feminino", 539.99),
						("Blusa", 40, "Moletom", "Masculino", 569.99);

select * from prod;
select * from prod where preço > 500;
select * from prod where preço < 500;
update prod set preço = 300.00 where id_produto = 8;


/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

/*Atividade 2

Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.
Popule esta tabela pizza com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 45 reais.
Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce). */

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
		id_categoria bigint auto_increment,
		tipo enum ("Salgada", "Doce"),
        tamanho enum ("Pequena", "Média", "Grande", "Tamanho Família"),
        
        primary key (id_categoria)
	);
    
create table tb_pizza(
		id_pizza bigint auto_increment,
		sabor varchar (255) not null,
        adicional varchar (255) not null, 
        borda varchar (255) not null,
        
        id_categoria bigint,
        
        primary key (id_pizza),
        foreign key (id_categoria) references tb_categoria
);
        
        
        
            
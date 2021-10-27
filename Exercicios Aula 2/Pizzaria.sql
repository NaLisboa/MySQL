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

    
create table tb_pizza(
		id_pizza bigint auto_increment,
		sabor varchar (255) not null,
        valor decimal (5,2) not null,
        adicional varchar (255) not null, 
        borda varchar (255) not null,
        fk_id_categoria bigint(2),
        
        primary key (id_pizza),
        foreign key (fk_id_categoria) references tb_categoria(id_categoria)
);



create table tb_categoria (
		id_categoria bigint auto_increment,
		tipo varchar (255) not null,
        tamanho varchar (255) not null,
        
        primary key (id_categoria)
	);
    select * from tb_categoria;
    
    insert into tb_categoria(tipo, tamanho)
			values ("Salgada", "Média"),
					("Doce", "Tamanho Família"),
					 ("Salgada", "Pequena"),
						("Doce", "Pequena"),
                        ("Salgada", "Grande");
                        
	select * from tb_pizza;
    
	insert into tb_pizza(sabor, adicional, borda, fk_id_categoria, valor)
		values ("Frango com Catupiry", "Batata palha", "Cheddar", 4, 47.00),
				("Meia Brigadeiro, Meia Prestígio", "Morango", "Chocolate", 3, 45.00),
				("Calabresa", "Sem adicional", "Sem Borda", 1, 25.00),
				("4 Queijos", "Sem adicional", "Catupiry", 5, 40.00),
				("Portuguesa", "Sem adicional", "Catupiry", 1, 32.00),
				("Bauru", "Catupiry", "Cheddar", 5, 36.00),
				("Chocolate com Banana", "Sem adicional", "Sem borda", 2, 30.00),
				("Sorvete", "Sem adicional", "Chocolate", 4, 40.00);
                
	select * from tb_pizza;
    select * from tb_categoria;
    select * from tb_pizza where preco >= 45.00;
    select * from tb_pizza where preco between 29.00 and 60.00;
	select * from tb_pizza where sabor like "%C%";
    select * from tb_pizza inner join tb_categoria
    on tb_categoria.id_categoria = tb_pizza.fk_id_categoria;
    
    select * from tb_pizza inner join tb_categoria
    on tb_categoria.id_categoria = tb_pizza.fk_id_categoria
    where tb_categoria.tamanho = "Pequena";
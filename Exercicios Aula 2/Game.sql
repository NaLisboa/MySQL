-- Atividade 1

-- Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
-- o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
-- informações dos personagens desse game.

-- o sistema trabalhará com 2 tabelas tb_personagem e tb_classe.


create table tb_classe(
			id_classe bigint (4) auto_increment,
            tipo varchar (255) not null,
			hp bigint (4) not null,
            
            primary key (id_classe)
);

create table tb_personagem(
			id_personagem bigint (4) auto_increment,
			nome varchar (45) not null,
            defesa bigint (4) not null,
            ataque varchar(255) not null,
		
        key_classe bigint,
        primary key (id_personagem),
        foreign key (key_classe) references tb_classe(id_classe)
	);
select * from tb_classe;
    
    insert into tb_classe (tipo, hp)
		values ("Terrestre", 1450),
				("Fogo", 1200),
                ("Aquático", 2000),
                ("Pedra", 3000);

select * from tb_personagem;

	insert into tb_personagem (nome, defesa, ataque, key_classe)
		values("Corredor", 2000, 1100, 1),
				("Mago de fogo", 4000, 2500, 2),
				("SubZero", 2500, 1000, 3),
                 ("Gigante", 1500, 2000, 4);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.key_classe
		order by id_personagem;

select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.key_classe
		where tb_classe.tipo = "Terrestre"
        order by id_personagem;
    
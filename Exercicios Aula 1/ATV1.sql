create database db_rh;


use db_rh;

create table empresa(
		cpf bigint not null,
		nome varchar (255) not null,
        funcao varchar(255) not null,
        salario decimal (7, 2) not null,
        primary key (cpf)
);

insert into empresa(cpf, nome, dataNasc, funcao, salario)
						Values	(12345678901, "Nathalia", '1992-02-16', "Assistente Adm", 2500.00),
								(23456789022, "Rita", '1993-01-20', "Gerente", 5000.00),
								(34567891222, "João", '1986-05-30', "Diretor", 3500.00),
								(45632145689, "Miguel", '1990-10-14', "Auxiliar Adm", 1500.00),
								(22345693928, "Roberta", '1999-12-02', "Lider", 1900.00);
                
select * from empresa;
select * from empresa where salario > 2000;
select * from empresa where salario < 2000;

update empresa set salario = 5000.00 where cpf = 12345678901;

/*Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade./*
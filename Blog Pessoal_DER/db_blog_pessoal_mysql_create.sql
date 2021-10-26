CREATE TABLE `temas` (
	`tema_id` bigint(2) NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL DEFAULT 'NN',
	PRIMARY KEY (`tema_id`)
);

CREATE TABLE `postagens` (
	`id_postagens` bigint(2) NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL DEFAULT 'NN',
	`texto` varchar(1000) NOT NULL DEFAULT 'NN',
	`data` TIMESTAMP(6) NOT NULL DEFAULT 'NOT NULL',
	`tema_id` bigint(2) NOT NULL,
	`id_usuarios` bigint(2) NOT NULL,
	PRIMARY KEY (`id_postagens`)
);

CREATE TABLE `usuarios` (
	`id_usuarios` bigint(2) NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL DEFAULT 'NN',
	`usuario` varchar(255) NOT NULL DEFAULT 'NN',
	`senha` varchar(255) NOT NULL DEFAULT 'NN',
	PRIMARY KEY (`id_usuarios`)
);

ALTER TABLE `postagens` ADD CONSTRAINT `postagens_fk0` FOREIGN KEY (`tema_id`) REFERENCES `temas`(`tema_id`);

ALTER TABLE `postagens` ADD CONSTRAINT `postagens_fk1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios`(`id_usuarios`);





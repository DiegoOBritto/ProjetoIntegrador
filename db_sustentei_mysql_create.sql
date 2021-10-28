CREATE TABLE `categoria` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`tipo` varchar(255) NOT NULL,
	`descricao_categoria` varchar(255) NOT NULL,
	`palavras_chaves` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `produto` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`descricao` varchar(500) NOT NULL,
	`tamanho` varchar(10) NOT NULL,
	`preco` DECIMAL(5,2) NOT NULL,
	`imagem` varchar(500) NOT NULL,
	`categoria_id` bigint NOT NULL,
	`usuario_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome_completo` varchar(255) NOT NULL,
	`usuario` varchar(255) NOT NULL,
	`senha` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `produto` ADD CONSTRAINT `produto_fk0` FOREIGN KEY (`categoria_id`) REFERENCES `categoria`(`id`);

ALTER TABLE `produto` ADD CONSTRAINT `produto_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`id`);





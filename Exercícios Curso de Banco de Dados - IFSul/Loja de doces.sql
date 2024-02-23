CREATE TABLE `Estandes` (
  `id` integer PRIMARY KEY,
  `nome` varchar(100),
  `aluguel` double,
  `location` varchar(255),
  `id_fiscal` integer
);

CREATE TABLE `Produtos` (
  `cod` integer PRIMARY KEY,
  `nome` varchar(100)
);

CREATE TABLE `Fiscais` (
  `id` integer PRIMARY KEY,
  `nome` varchar(100),
  `salario` decimal(6,2)
);

CREATE TABLE `Receita` (
  `id` integer PRIMARY KEY,
  `id_produto` integer,
  `receita` double,
  `data_cadastro` timestamp,
  `descricao` text
);

CREATE TABLE `estandes_possui_produtos` (
  `id_estandes` integer,
  `cod_produto` integer,
  `valor_produto` double
);

ALTER TABLE `Estandes` ADD FOREIGN KEY (`id_fiscal`) REFERENCES `Fiscais` (`id`);

ALTER TABLE `Receita` ADD FOREIGN KEY (`id_produto`) REFERENCES `Produtos` (`cod`);

ALTER TABLE `estandes_possui_produtos` ADD FOREIGN KEY (`id_estandes`) REFERENCES `Estandes` (`id`);

ALTER TABLE `estandes_possui_produtos` ADD FOREIGN KEY (`cod_produto`) REFERENCES `Produtos` (`cod`);

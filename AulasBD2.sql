CREATE DATABASE mercadinho;

CREATE TABLE vendas
(
		usuario VARCHAR(40),
		produto VARCHAR(60),
		preco DECIMAL(15,2),
		quantidade INT,
		categoria VARCHAR(60)
);


-- Se eu inserir os dados na ordem das colunas nao preciso especificar as colunas appos o insert into,
-- apenas se eu quiser mudar a ordem que eu insiro as informacoes
INSERT INTO vendas
			VALUES(
            'guilherme.meireles',
            'Xbox One S',
            1800.00,
            1,
            'games'
            );

-- Selecionar as informacoes de um usuario em especifico
SELECT * FROM vendas WHERE usuario = 'guilherme.meireles';

-- Selecionar todas as informacoes de uma tabela
SELECT * FROM mercadinho.vendas;

-- Selecionar apenas colunas que eu desejar
SELECT 
	produto, preco 
FROM vendas 
WHERE usuario = 'guilherme.meireles';

CREATE TABLE produtos
(
		id INT UNSIGNED NOT NULL AUTO_INCREMENT,
		titulo VARCHAR(100),
		descricao TEXT,
		preco DECIMAL(15,2),
		categoria VARCHAR(70),
        marca VARCHAR(70),
        foto VARCHAR(70),
        PRIMARY KEY(id)
);

INSERT INTO produtos VALUES(
null, 'Xbox One S 500GB Branco', 'descricao longa...', 1800.00,
'games', 'microsoft', 'foto1, foto2, foto3');

INSERT INTO produtos VALUES(
null, 'Xbox One S 1000GB Preto', 'descricao longa...', 1800.00,
'games', 'microsoft', 'foto1, foto2');
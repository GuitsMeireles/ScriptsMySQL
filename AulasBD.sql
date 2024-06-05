-- CRUD esta relacionado a linhas da tabela 

-- Create = insert = insere uma linha
-- Read = select = lê todas as linhas
-- Update = 
-- Delete = 

-- Criar Banco de Dados
 CREATE DATABASE sindassist;

-- Selecionar Banco de Dados a ser usado
 USE sindassist;

-- Criar tabela
CREATE TABLE usuarios
(
    nome VARCHAR (30),
    usuario VARCHAR (30),
    senha VARCHAR (12)
    
);	

-- Adicionar informacoes a tabela e colunas especificas
INSERT INTO usuarios(nome, usuario, senha, idade) 
			VALUES ('Guilherme Meireles', 'guilherme.meireles', '1234567891', 22);
            
INSERT INTO usuarios(nome, usuario, senha, idade) 
			VALUES ('Lucas Ferreira', 'lucas.ferreira', '123456', 26);

-- Adicionar informacoes a tabela e colunas especificas
INSERT INTO postagens(titulo, descricao, dt_postagem, qtd_visualizacoes) 
			VALUES ('Titulo postagem', 'Descricao postagens', '2014-05-31', 52480109);
            
-- Descricao da tabela
DESCRIBE postagens;

-- Eliminar Tabela
DROP TABLE pessoas;

-- Selecionar o Banco de Dados e uma tabela especifica
SELECT * FROM facebook.postagens;

-- Remove os dados da tabela sem remover a tabela
TRUNCATE TABLE usuarios;

-- Renomeando a tabela
ALTER TABLE postagens_blog RENAME TO postagens;

-- Adicionando uma nova coluna a tabela (por padrao ela sera a ultima coluna)
ALTER TABLE postagens ADD COLUMN data_postagem DATETIME;
-- Caso queira que ela seja a primeira coluna devo adicionar o comando FIRST
ALTER TABLE postagens ADD COLUMN data_postagem DATETIME FIRST;
-- Caso queria adicionar depois de outra coluna devo utilizar o comando AFTER
ALTER TABLE postagens ADD COLUMN data_postagem DATETIME AFTER titulo;

-- Eliminar uma coluna da tabela
ALTER TABLE postagens 
	DROP COLUMN data_postagem,
	DROP COLUMN qtd_postagens;

-- Adicionar mais de uma coluna a tabela
ALTER TABLE postagens 
	ADD COLUMN data_postagem DATETIME NOT NULL AFTER titulo,
    ADD COLUMN qtd_postagens INT NOT NULL DEFAULT 0;
    
-- Mudar nome e tipo de dados de uma coluna ja existente
ALTER TABLE postagens
	CHANGE COLUMN qtd_postagens qtd_visualizacoes DATE NOT NULL;
    
-- Mudar tipo de dados e posicao de uma coluna existente
ALTER TABLE postagens
	MODIFY COLUMN qtd_visualizacoes BIGINT;
    
-- Deletar registro da tabela selecionada sem WHERE eu deleto todos os usuarios
	DELETE FROM usuarios WHERE usuario = 'guilherme.meireles';
    
-- Atualizar registro da coluna selecionada sem WHERE eu altero a senha de todos os usuarios
	UPDATE usuarios SET
    senha = '20012002',
    nome = 'Guilherme Meireles Batista'
    WHERE usuario = 'guilherme.meireles';
    
-- Adicionando coluna de idade na tabela
ALTER TABLE usuarios ADD COLUMN idade TINYINT;
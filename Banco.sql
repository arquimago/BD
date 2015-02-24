
CREATE SCHEMA colecao;


CREATE TABLE colecao.estante (
  idestante INT NOT NULL,
  PRIMARY KEY (idestante)
);
  

CREATE TABLE colecao.prateleira (
  idprateleira INT NOT NULL,
  estante_idestante INT NOT NULL,
  PRIMARY KEY (idprateleira),
  FOREIGN KEY (estante_idestante) REFERENCES colecao.estante(idestante)
  ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE colecao.item (
  idItem INT NOT NULL UNIQUE,
  nome VARCHAR(45) NULL,
  n_discos INT  NOT NULL,
  midia VARCHAR(45) NULL,
  classificacao INT  NOT NULL,
  duracao INT NOT NULL,
  prateleira_idprateleira INT NOT NULL,
  PRIMARY KEY (idItem, prateleira_idprateleira)
);


CREATE TABLE colecao.documentarios (
  item_idItem INT NOT NULL,
  ano VARCHAR(4) NULL,
  PRIMARY KEY (item_idItem),
  FOREIGN KEY (item_idItem) REFERENCES colecao.item (idItem)
  ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE colecao.filmes (
  item_idItem INT NOT NULL,
  ano VARCHAR(4) NULL,
  genero VARCHAR(45) NULL,
  PRIMARY KEY (item_idItem),
  FOREIGN KEY (item_idItem) REFERENCES colecao.item (idItem)
  ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE colecao.series (
  item_idItem INT NOT NULL,
  genero VARCHAR(45) NULL,
  ano_de_inicio VARCHAR(4) NULL,
  PRIMARY KEY (item_idItem),
  FOREIGN KEY (item_idItem) REFERENCES colecao.item (idItem)
  ON DELETE SET NULL ON UPDATE CASCADE
);


--ESSA TABELA TEM PROBLEMA DE RESTRIÇÃO DE UNICIDADE
CREATE TABLE colecao.temporadas (
  series_item_idItem INT NOT NULL ,
  ano VARCHAR(4) NULL,
  numero INT NOT NULL ,
  PRIMARY KEY (series_item_idItem,numero),
  FOREIGN KEY (series_item_idItem) REFERENCES colecao.series (item_idItem)
  ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE colecao.pessoa (
  idpessoa INT NOT NULL,
  nome VARCHAR(45) NULL,
  PRIMARY KEY (idpessoa)
);


CREATE TABLE colecao.atores (
  pessoa_idpessoa INT NOT NULL,
  PRIMARY KEY (pessoa_idpessoa),
  FOREIGN KEY (pessoa_idpessoa) REFERENCES colecao.pessoa (idpessoa)
  ON DELETE SET NULL ON UPDATE CASCADE  
);


CREATE TABLE colecao.atua_f (
  filmes_item_idItem INT NOT NULL,
  atores_pessoa_idpessoa INT NOT NULL,
  PRIMARY KEY (filmes_item_idItem, atores_pessoa_idpessoa),
  FOREIGN KEY (filmes_item_idItem) REFERENCES colecao.filmes (item_idItem)
  ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (atores_pessoa_idpessoa) REFERENCES colecao.atores (pessoa_idpessoa)   
  ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE colecao.atua_s (
  series_item_idItem INT NOT NULL,
  atores_pessoa_idpessoa INT NOT NULL,
  PRIMARY KEY (series_item_idItem, atores_pessoa_idpessoa),
  FOREIGN KEY (series_item_idItem) REFERENCES colecao.series (item_idItem) 
  ON DELETE SET NULL ON UPDATE CASCADE, 
  FOREIGN KEY (atores_pessoa_idpessoa) REFERENCES colecao.atores (pessoa_idpessoa)
  ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE colecao.diretores (
  pessoa_idpessoa INT NOT NULL,
  PRIMARY KEY (pessoa_idpessoa),
  FOREIGN KEY (pessoa_idpessoa) REFERENCES colecao.pessoa (idpessoa)
  ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE colecao.dirige (
  item_idItem INT NOT NULL,
  diretores_pessoa_idpessoa INT NOT NULL,
  PRIMARY KEY (item_idItem, diretores_pessoa_idpessoa),
  FOREIGN KEY (item_idItem) REFERENCES colecao.item (idItem)
  ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (diretores_pessoa_idpessoa) REFERENCES colecao.diretores (pessoa_idpessoa)  
  ON DELETE SET NULL ON UPDATE CASCADE 
);


CREATE TABLE colecao.produtores (
  pessoa_idpessoa INT NOT NULL,
  PRIMARY KEY (pessoa_idpessoa),
  FOREIGN KEY (pessoa_idpessoa) REFERENCES colecao.pessoa (idpessoa)
  ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE colecao.produz (
  item_idItem INT NOT NULL,
  produtores_pessoa_idpessoa INT NOT NULL,
  PRIMARY KEY (item_idItem, produtores_pessoa_idpessoa),
  FOREIGN KEY (item_idItem) REFERENCES colecao.item (idItem)
  ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (produtores_pessoa_idpessoa) REFERENCES colecao.produtores (pessoa_idpessoa)
  ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE colecao.premios (
  idpremios INT NOT NULL,
  nome VARCHAR(45) NULL,
  ano VARCHAR(4) NOT NULL,
  pessoa_idpessoa INT NULL,
  item_idItem INT NOT NULL,
  PRIMARY KEY (idpremios, item_idItem),
  FOREIGN KEY (pessoa_idpessoa) REFERENCES colecao.pessoa (idpessoa)
  ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (item_idItem) REFERENCES colecao.item (idItem)
  ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE colecao.contato (
  idcontato INT NOT NULL,
  nome VARCHAR(45) NULL,
  apelido VARCHAR(45) NULL,
  PRIMARY KEY (idcontato)
);


CREATE TABLE colecao.email_contato (
  email VARCHAR(60) NOT NULL,
  contato_idcontato INT NOT NULL,
  PRIMARY KEY (email, contato_idcontato),
  FOREIGN KEY (contato_idcontato) REFERENCES colecao.contato (idcontato)
  ON DELETE SET NULL ON UPDATE CASCADE
 );


CREATE TABLE colecao.telefone_contato (
  telefone VARCHAR(11) NOT NULL,
  contato_idcontato INT NOT NULL,
  PRIMARY KEY (telefone, contato_idcontato),
  FOREIGN KEY (contato_idcontato) REFERENCES colecao.contato (idcontato)
  ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE colecao.emprestimo (
  data DATE NOT NULL,
  contato_idcontato INT NOT NULL,
  item_idItem INT NOT NULL,
  PRIMARY KEY (contato_idcontato, item_idItem),
  FOREIGN KEY (contato_idcontato) REFERENCES colecao.contato (idcontato)
  ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (item_idItem) REFERENCES colecao.item (idItem)
  ON DELETE SET NULL ON UPDATE CASCADE
);

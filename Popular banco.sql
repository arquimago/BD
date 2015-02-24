INSERT INTO colecao.estante VALUES(1);
INSERT INTO colecao.prateleira VALUES(1, 1);
INSERT INTO colecao.item VALUES(1, 'A Volta dos que Nao Foram', 1, 'DVD', 18, 30, 1);
INSERT INTO colecao.item VALUES(2, 'Vovó me ama', 1, 'DVD', 18, 30, 1);
INSERT INTO colecao.item VALUES(3, 'A Pipa do Vovô', 1, 'DVD', 18, 30, 1);
INSERT INTO colecao.item VALUES(4, 'Aprovado em Banco de Dados', 1, 'DVD', 18, 30, 1);
INSERT INTO colecao.item VALUES(5, 'O Cientista da Computação', 1, 'DVD', 18, 30, 1);
INSERT INTO colecao.item VALUES(6, 'Preciso me formar', 1, 'DVD', 18, 30, 1);
INSERT INTO colecao.documentarios VALUES(1, '1990');    
INSERT INTO colecao.documentarios VALUES(5, '2018');  
INSERT INTO colecao.filmes VALUES(2, '1993', 'Humor');
INSERT INTO colecao.filmes VALUES(4, '2014', 'Épico');
INSERT INTO colecao.series VALUES(3, 'Drama', '1999');
INSERT INTO colecao.series VALUES(6, 'Humor', '2008');
INSERT INTO colecao.temporadas VALUES(3, '1999', 1);
INSERT INTO colecao.temporadas VALUES(3, '2000', 2);
INSERT INTO colecao.temporadas VALUES(6, '2011', 4);
INSERT INTO colecao.temporadas VALUES(6, '2012', 5);
INSERT INTO colecao.pessoa VALUES(5, 'José');
INSERT INTO colecao.pessoa VALUES(6, 'Maria José');
INSERT INTO colecao.pessoa VALUES(7, 'José Maria');
INSERT INTO colecao.pessoa VALUES(10, 'João Joaquim');
INSERT INTO colecao.pessoa VALUES(11, 'José João');
INSERT INTO colecao.pessoa VALUES(12, 'João Francisco');
INSERT INTO colecao.pessoa VALUES(20, 'Teobaldo Maribaldo');
INSERT INTO colecao.pessoa VALUES(21, 'Maria Teobaldo');
INSERT INTO colecao.pessoa VALUES(22, 'Helena Teobaldo');
INSERT INTO colecao.atores VALUES(5);
INSERT INTO colecao.atores VALUES(6);
INSERT INTO colecao.atores VALUES(7);
INSERT INTO colecao.diretores VALUES(10);
INSERT INTO colecao.diretores VALUES(11);
INSERT INTO colecao.diretores VALUES(12);
INSERT INTO colecao.produtores VALUES(20);
INSERT INTO colecao.produtores VALUES(21);
INSERT INTO colecao.produtores VALUES(22);
INSERT INTO colecao.atua_f VALUES(2, 5);
INSERT INTO colecao.atua_f VALUES(4, 6);
INSERT INTO colecao.atua_f VALUES(4, 7);
INSERT INTO colecao.atua_f VALUES(2, 6);
INSERT INTO colecao.atua_s VALUES(3, 5);
INSERT INTO colecao.atua_s VALUES(3, 6);
INSERT INTO colecao.atua_s VALUES(3, 7);
INSERT INTO colecao.atua_s VALUES(6, 5);
INSERT INTO colecao.atua_s VALUES(6, 6);
INSERT INTO colecao.dirige VALUES(1, 10);
INSERT INTO colecao.dirige VALUES(2, 11);
INSERT INTO colecao.dirige VALUES(3, 12);
INSERT INTO colecao.dirige VALUES(4, 10);
INSERT INTO colecao.dirige VALUES(5, 11);
INSERT INTO colecao.dirige VALUES(6, 12);
INSERT INTO colecao.produz VALUES (1, 20);
INSERT INTO colecao.produz VALUES (2, 21);
INSERT INTO colecao.produz VALUES (3, 22);
INSERT INTO colecao.produz VALUES (4, 20);
INSERT INTO colecao.produz VALUES (5, 21);
INSERT INTO colecao.produz VALUES (6, 22);
INSERT INTO colecao.premios VALUES (1,'oscar melhor filme','1994',NULL,2);
INSERT INTO colecao.premios VALUES (1,'abobrinha pior ator','2015',6,4);
INSERT INTO colecao.premios VALUES (1,'tomate de pior diretor','2011',12,6);
INSERT INTO colecao.contato VALUES (1,'Jose','zezinho');
INSERT INTO colecao.contato VALUES (2,'Esterosvaldico','val');
INSERT INTO colecao.contato VALUES (3,'Raimunda','rai');
INSERT INTO colecao.email_contato VALUES ('ze@uol.com',1);
INSERT INTO colecao.email_contato VALUES ('ze@gaymail.net',1);
INSERT INTO colecao.email_contato VALUES ('val@ufs.com.br',2);
INSERT INTO colecao.email_contato VALUES ('rai@ufs.com.br',3);
INSERT INTO colecao.telefone_contato  VALUES ('2345678',3);
INSERT INTO colecao.telefone_contato  VALUES ('9345678',2);
INSERT INTO colecao.telefone_contato  VALUES ('8345678',1);
INSERT INTO colecao.telefone_contato  VALUES ('7345678',1);
INSERT INTO colecao.emprestimo VALUES ((to_date('2015-02-10','YYYY-MM-DD')),1,1);
INSERT INTO colecao.emprestimo VALUES ((to_date('2015-02-11','YYYY-MM-DD')),2,4);
INSERT INTO colecao.emprestimo VALUES ((to_date('2015-02-12','YYYY-MM-DD')),2,3);
INSERT INTO colecao.emprestimo VALUES ((to_date('2015-02-13','YYYY-MM-DD')),2,2);
INSERT INTO colecao.emprestimo VALUES ((to_date('2015-02-14','YYYY-MM-DD')),3,6);
INSERT INTO colecao.emprestimo VALUES ((to_date('2015-02-15','YYYY-MM-DD')),3,5);
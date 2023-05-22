drop database if exists ESCOLA;
create database ESCOLA;
use ESCOLA;

create table TBMATERIA(
	codigo_materia int,
	carga_horaria_materia int,
	nome_materia varchar (50),
	codigo_serie int,
	primary key (codigo_materia));
    
insert into TBMATERIA values (1, 120, "Matemática", 1);
insert into TBMATERIA values (2, 120, "Português", 1);
insert into TBMATERIA values (3, 80, "História", 1);  
insert into TBMATERIA values (4, 80, "Geografia", 1);
insert into TBMATERIA values (5, 120, "Física", 2);
insert into TBMATERIA values (6, 120, "Ciências", 1);
insert into TBMATERIA values (7, 40, "Sociologia", 1);  
insert into TBMATERIA values (8, 40, "Filosofia", 1);
    
create table TBTURMA(
	codigo_turma int,
	serie_turma int,
	horario_turma time,
	nome_turma varchar (50),
	primary key (codigo_turma));
    
insert into TBTURMA values (1, 1, "07:50:00", "Feynman");
insert into TBTURMA values (2, 1, "18:15:00", "Farenheit");
insert into TBTURMA values (3, 1, "07:50:00", "Einstein");
insert into TBTURMA values (4, 1, "18:15:00", "Celsius");
insert into TBTURMA values (5, 2, "07:50:00", "Watts");
insert into TBTURMA values (6, 2, "07:50:00", "Ferrari");
insert into TBTURMA values (7, 1, "07:50:00", "Ford");
insert into TBTURMA values (8, 1, "18:15:00", "Tesla");

create table TBUF(
	codigo_uf int,
	UF_endereco char (2),
	cidade_UF varchar (100),
	primary key (codigo_uf));
    
insert into TBUF values (1, "PR", "Curitiba");
insert into TBUF values (2, "PR", "São José dos Pinhais");
insert into TBUF values (3, "PR", "Guaratura");
insert into TBUF values (4, "PR", "Pinhais");
insert into TBUF values (5, "SP", "São Paulo");
insert into TBUF values (6, "SP", "Santo André");
insert into TBUF values (7, "SP", "Matinhos");
insert into TBUF values (8, "SP", "Santos");
insert into TBUF values (9, "SC", "Florianópolis");
insert into TBUF values (10, "RJ", "Rio de Janeiro");
insert into TBUF values (11, "RJ", "Mauá");
insert into TBUF values (12, "PR", "Cascavel");

create table TBENDERECO(
	codigo_uf int,
	codigo_cidade_endereco int,
	rua_endereco varchar (100),
	numero_endereco varchar (20),
	complemento_endereco varchar (100),
	CEP_endereco char (8),
	primary key (codigo_cidade_endereco),
	foreign key (codigo_uf) references TBUF (codigo_uf));

insert into TBENDERECO values (1,1, "Rua Lima", "1", "A", "11111111");
insert into TBENDERECO values (2,2, "Rua Laranja", "2", "B", "22222222");
insert into TBENDERECO values (3,3, "Rua Limão", "3", "C", "33333333");
insert into TBENDERECO values (4,4, "Rua Lichia", "4", "D", "44444444");
insert into TBENDERECO values (5,5, "Rua Abacaxi", "5", "A", "55555555");
insert into TBENDERECO values (6,6, "Rua Abacate", "6", "B", "66666666");
insert into TBENDERECO values (7,7, "Rua Banana", "7", "C", "77777777");
insert into TBENDERECO values (8,8, "Rua Uva", "8", "D", "88888888");
insert into TBENDERECO values (9,9, "Rua Tangerina", "9", "A", "99999999");
insert into TBENDERECO values (10,10, "Rua Amora", "10", "B", "10101010");
insert into TBENDERECO values (11,11, "Rua Framboesa", "11", "C", "20202020");
insert into TBENDERECO values (12,12, "Rua Figo", "12", "D", "30303030");
insert into TBENDERECO values (1,13, "Rua Goiaba", "13", "A", "40404040");
insert into TBENDERECO values (2,14, "Rua Groselha", "14", "B", "50505050");
insert into TBENDERECO values (3,15, "Rua Jabuticaba", "15", "C", "60606060");
insert into TBENDERECO values (4,16, "Rua Romã", "16", "D", "70707070");
insert into TBENDERECO values (5,17, "Rua Kiwi", "17", "A", "80808080");
insert into TBENDERECO values (6,18, "Rua Umbu", "18", "B", "90909090");
insert into TBENDERECO values (7,19, "Rua Pera", "19", "C", "00000000");
insert into TBENDERECO values (8,20, "Rua Pêssego", "20", "D", "00000001");

create table TBRESPONSAVEL(
	codigo_responsavel int,
	codigo_cidade_endereco int,
	nome_responsavel varchar (100),
	email_responsavel varchar (50),
	CPF_responsavel char (11),
	primary key (codigo_responsavel),
	foreign key (codigo_cidade_endereco) references TBENDERECO (codigo_cidade_endereco));
    
insert into TBRESPONSAVEL values (1, 1, "Rafael", "rafael@hotmail.com", "11111111111");
insert into TBRESPONSAVEL values (2, 2, "Rodrigo", "rodrigo@hotmail.com", "22222222222");    
insert into TBRESPONSAVEL values (3, 3, "Rubens", "rubens@hotmail.com", "33333333333");    
insert into TBRESPONSAVEL values (4, 4, "Rogério", "rogerio@hotmail.com", "44444444444");
insert into TBRESPONSAVEL values (5, 5, "Henrique", "henrique@hotmail.com", "55555555555");
insert into TBRESPONSAVEL values (6, 6, "Miguel", "miguell@hotmail.com", "66666666666");
insert into TBRESPONSAVEL values (7, 7, "Arthur", "arthur@hotmail.com", "77777777777");    
insert into TBRESPONSAVEL values (8, 8, "Theo", "theo@hotmail.com", "88888888888");    
insert into TBRESPONSAVEL values (9, 9, "Heitor", "heitor@hotmail.com", "99999999999");
insert into TBRESPONSAVEL values (10, 10, "Gael", "gael@hotmail.com", "00000000000");    
insert into TBRESPONSAVEL values (11, 11, "Davi", "davi@hotmail.com", "01001001001");
insert into TBRESPONSAVEL values (12, 12, "Bernardo", "bernardo@hotmail.com", "02002002002");    
insert into TBRESPONSAVEL values (13, 13, "Gabriel", "gabriel@hotmail.com", "03003003003");    
insert into TBRESPONSAVEL values (14, 14, "Ravi", "ravi@hotmail.com", "04004004004");
insert into TBRESPONSAVEL values (15, 15, "Noah", "noah@hotmail.com", "05005005005");        
    
create table TBTELEFONERESPONSAVEL(
	numero_telefone char (15),
	codigo_responsavel int,
	primary key (numero_telefone, codigo_responsavel),
	foreign key (codigo_responsavel) references TBRESPONSAVEL (codigo_responsavel));
    
insert into TBTELEFONERESPONSAVEL values ("+55041911111111", 1);
insert into TBTELEFONERESPONSAVEL values ("+55041922222222", 2);
insert into TBTELEFONERESPONSAVEL values ("+55041933333333", 3);
insert into TBTELEFONERESPONSAVEL values ("+55041944444444", 4);
insert into TBTELEFONERESPONSAVEL values ("+55041955555555", 5);
insert into TBTELEFONERESPONSAVEL values ("+55041966666666", 6);
insert into TBTELEFONERESPONSAVEL values ("+55041977777777", 7);
insert into TBTELEFONERESPONSAVEL values ("+55041988888888", 8);
insert into TBTELEFONERESPONSAVEL values ("+55041999999999", 9);
insert into TBTELEFONERESPONSAVEL values ("+55041901100110", 10);
insert into TBTELEFONERESPONSAVEL values ("+55041902200220", 11);
insert into TBTELEFONERESPONSAVEL values ("+55041903300330", 12);
insert into TBTELEFONERESPONSAVEL values ("+55041904400440", 13);
insert into TBTELEFONERESPONSAVEL values ("+55041905500550", 14);
insert into TBTELEFONERESPONSAVEL values ("+55041906600660", 15);
    
create table TBSEDE(
	nome_sede varchar (100),
	codigo_cidade_endereco int,
	codigo_sede int,
	email_sede varchar (50),
	numero_telefone_sede char (15),
	primary key (nome_sede),
	foreign key (codigo_cidade_endereco) references TBENDERECO (codigo_cidade_endereco));
    
insert into TBSEDE values ("Positivo Batel", 1, 1, "positivobatel@hotmail.com", "+55041911111111");    
insert into TBSEDE values ("Positivo Água Verde", 2, 2, "positivoaguaverde@hotmail.com", "+55041922222222");     
insert into TBSEDE values ("Positivo Pinheirinho", 3, 3, "positivobpinheirinho@hotmail.com", "+55041933333333");    
insert into TBSEDE values ("Positivo Portão", 4, 4, "positivoportao@hotmail.com", "+55041944444444");    

create table TBBOLSA_ALUNO(
	codigo_bolsa int,
	descricao_bolsa varchar (50),
	primary key (codigo_bolsa));

insert into TBBOLSA_ALUNO values(1, "ProUni");
insert into TBBOLSA_ALUNO values(2, "Credies");

create table TBALUNO(
	codigo_responsavel int,
	matricula_aluno int,
	codigo_turma int,
	nome_sede varchar (100),
	nome_aluno varchar (100),
	data_nascimento_aluno date,
	serie_aluno int,
	CPF_aluno char (11),
	codigo_cidade_endereco int,
	codigo_bolsa int,
	primary key (matricula_aluno),
	foreign key (codigo_responsavel) references TBRESPONSAVEL (codigo_responsavel),
	foreign key (codigo_turma) references TBTURMA (codigo_turma),
	foreign key (nome_sede) references TBSEDE (nome_sede),
	foreign key (codigo_cidade_endereco) references TBENDERECO (codigo_cidade_endereco),
	foreign key (codigo_bolsa) references TBBOLSA_ALUNO (codigo_bolsa));

insert into TBALUNO values (1, 1, 1, "Positivo Batel", "Arthur", "2001-01-01", 1, "11111111111", 1, 1);
insert into TBALUNO values (2, 2, 1, "Positivo Batel", "André", "2002-02-02", 1, "22222222222", 2, null);
insert into TBALUNO values (3, 3, 2, "Positivo Batel", "Arnaldo", "2003-03-03", 2, "33333333333", 3, null);
insert into TBALUNO values (4, 4, 2, "Positivo Água Verde", "Antônio", "2002-04-04", 1, "44444444444", 4, null);
insert into TBALUNO values (3, 5, 2, "Positivo Água Verde", "Rafael", "2011-11-01", 2, "11111111112", 5, null);
insert into TBALUNO values (6, 6, 3, "Positivo Água Verde", "Joao", "2022-12-02", 2, "22222222223", 6, null);
insert into TBALUNO values (7, 7, 3, "Positivo Pinheirinho", "Bruno", "2013-03-03", 1, "33333333334", 7, null);
insert into TBALUNO values (8, 8, 7, "Positivo Pinheirinho", "Matheus", "2022-02-04", 1, "44444444445", 8, 2);
insert into TBALUNO values (9, 9, 6, "Positivo Pinheirinho", "Douglas", "2003-01-01", 1, "11111111116", 9, null);
insert into TBALUNO values (10, 10, 5, "Positivo Pinheirinho", "Geraldo", "2008-02-02", 2, "22222222227", 10, 1);
insert into TBALUNO values (11, 11, 2, "Positivo Pinheirinho", "Neusa", "2003-11-03", 2, "33333333338", 3, null);
insert into TBALUNO values (12, 12, 2, "Positivo Pinheirinho", "Natália", "2004-12-04", 1, "44444444449", 3, null);
insert into TBALUNO values (2, 13, 4, "Positivo Portão", "Renata", "2012-11-03", 2, "11111111110", 13, null);
insert into TBALUNO values (14, 14, 3, "Positivo Portão", "Cleber", "2002-11-02", 2, "22222222298", 14, null);
insert into TBALUNO values (4, 15, 3, "Positivo Pinheirinho", "Francisco", "2013-04-03", 1, "33333333308", 15, null);
insert into TBALUNO values (11, 16, 8, "Positivo Água Verde", "Franciele", "2004-03-04", 1, "44444444152", 16, 2);

create table TBHISTORICO(
	matricula_aluno int,
	nota_historico int,
	ano_nota_historico year,
	nome_instituicao varchar (100),
	primary key (matricula_aluno, nota_historico, ano_nota_historico),
	foreign key (matricula_aluno) references TBALUNO (matricula_aluno));
    
insert into TBHISTORICO values (1, 10, 2011, "Expoente Batel");
insert into TBHISTORICO values (2, 9, 2012, "Expoente Batel");
insert into TBHISTORICO values (3, 8, 2013, "Expoente Pinheirinho");   
insert into TBHISTORICO values (4, 2, 2014, "Expoente Portão");
insert into TBHISTORICO values (5, 3, 2011, "Expoente Batel");
insert into TBHISTORICO values (6, 9, 2012, "Expoente Batel");
insert into TBHISTORICO values (7, 8, 2013, "Expoente Pinheirinho");   
insert into TBHISTORICO values (8, 10, 2014, "Expoente Portão");   
insert into TBHISTORICO values (9, 2, 2011, "Expoente Batel");
insert into TBHISTORICO values (10, 1, 2012, "Expoente Batel");
insert into TBHISTORICO values (11, 6, 2013, "Expoente Pinheirinho");   
insert into TBHISTORICO values (12, 5, 2014, "Expoente Portão");      
insert into TBHISTORICO values (13, 10, 2011, "Expoente Batel");
insert into TBHISTORICO values (14, 9, 2012, "Expoente Batel");
insert into TBHISTORICO values (15, 2, 2013, "Expoente Pinheirinho");   
insert into TBHISTORICO values (16, 8, 2014, "Expoente Portão");    

create table TBMATERIA_ALUNO_NOTAS(
	matricula_aluno int,
	codigo_materia int,
	ano_nota_aluno_materia year,
	nota_aluno_materia float,
	frequencia int,
	primary key (matricula_aluno, codigo_materia, ano_nota_aluno_materia),
	foreign key (matricula_aluno) references TBALUNO (matricula_aluno),
	foreign key (codigo_materia) references TBMATERIA (codigo_materia));
    
insert into TBMATERIA_ALUNO_NOTAS values (1,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (1,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (1,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (1,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (1,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (1,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (1,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (1,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (2,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (2,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (2,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (2,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (2,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (2,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (2,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (2,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (3,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (3,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (3,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (3,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (3,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (3,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (3,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (3,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (4,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (4,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (4,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (4,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (4,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (4,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (4,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (4,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (5,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (5,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (5,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (5,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (5,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (5,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (5,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (5,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (6,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (6,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (6,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (6,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (6,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (6,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (6,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (6,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (7,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (7,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (7,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (7,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (7,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (7,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (7,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (7,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (8,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (8,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (8,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (8,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (8,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (8,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (8,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (8,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (9,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (9,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (9,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (9,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (9,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (9,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (9,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (9,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (10,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (10,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (10,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (10,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (10,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (10,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (10,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (10,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (11,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (11,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (11,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (11,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (11,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (11,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (11,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (11,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (12,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (12,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (12,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (12,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (12,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (12,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (12,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (12,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (13,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (13,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (13,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (13,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (13,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (13,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (13,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (13,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (14,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (14,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (14,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (14,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (14,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (14,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (14,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (14,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (15,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (15,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (15,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (15,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (15,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (15,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (15,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (15,8,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (16,1,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (16,2,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (16,3,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (16,4,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (16,5,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (16,6,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (16,7,2021,10,80);
insert into TBMATERIA_ALUNO_NOTAS values (16,8,2021,10,80);

create table TBESTAGIARIO_PROFESSOR(
	codigo_estagiario_professor int,
	descricao_estagiario_professor varchar(50),
	primary key (codigo_estagiario_professor));

insert into TBESTAGIARIO_PROFESSOR values (1,"Iniciante");
insert into TBESTAGIARIO_PROFESSOR values (2,"Pré-Efetivação");

create table TBPROFESSOR(
	matricula_professor int,
	nome_sede varchar (100),
	nome_professor varchar (100),
	CPF_professor char (11),
	numero_telefone_professor char (15),
	codigo_cidade_endereco int,
	email_professor varchar (50),
	codigo_estagiario_professor int,
	primary key (matricula_professor),
	foreign key (nome_sede) references TBSEDE (nome_sede),
	foreign key (codigo_cidade_endereco) references TBENDERECO (codigo_cidade_endereco),
	foreign key (codigo_estagiario_professor) references TBESTAGIARIO_PROFESSOR (codigo_estagiario_professor));
    
insert into TBPROFESSOR values (1, "Positivo Batel", "Daniel", "11111111111", "+55041911111111", 1, "daniel@hotmail.com",1);
insert into TBPROFESSOR values (2, "Positivo Água Verde", "Douglas", "22222222222","+55041922222222", 2, "douglas@hotmail.com",null);
insert into TBPROFESSOR values (3, "Positivo Pinheirinho", "Danilo", "33333333333","+55041933333333", 3, "danilo@hotmail.com",null);
insert into TBPROFESSOR values (4, "Positivo Portão", "Davi", "44444444444", "+55041944444444", 4, "davi@hotmail.com",null);
insert into TBPROFESSOR values (5, "Positivo Batel", "Benjamin", "11111111111", "+55041911111111", 1, "benjamin@hotmail.com",null);
insert into TBPROFESSOR values (6, "Positivo Água Verde", "Matheus", "22222222222","+55041922222222", 2, "matheus@hotmail.com",2);
insert into TBPROFESSOR values (7, "Positivo Pinheirinho", "Isaac", "33333333333","+55041933333333", 3, "isaac@hotmail.com",null);
insert into TBPROFESSOR values (8, "Positivo Batel", "Anthony", "44444444444", "+55041944444444", 4, "anthony@hotmail.com",null);

create table TBESTAGIARIO_FUNCIONARIO(
	codigo_estagiario_funcionario int,
	descricao_estagiario_funcionario varchar (50),
	primary key (codigo_estagiario_funcionario));
   
insert into TBESTAGIARIO_FUNCIONARIO values (1,"Iniciante");
insert into TBESTAGIARIO_FUNCIONARIO values (2,"Pré-efetivação");    

create table TBFUNCIONARIOS(
	matricula_funcionario int,
	nome_sede varchar (100),
	nome_funcionario varchar (100),
	CPF_funcionario char (11),
	numero_telefone_funcionario char (15),
	codigo_cidade_endereco int,
	email_funcionario varchar (50),
	codigo_estagiario_funcionario int,
	primary key (matricula_funcionario),
	foreign key (nome_sede) references TBSEDE (nome_sede),
	foreign key (codigo_cidade_endereco) references TBENDERECO (codigo_cidade_endereco),
	foreign key (codigo_estagiario_funcionario) references TBESTAGIARIO_FUNCIONARIO (codigo_estagiario_funcionario));

insert into TBFUNCIONARIOS values (1, "Positivo Batel", "Matheus", "11111111111", "+55041911111111", 1, "matheus@hotmail.com",1);    
insert into TBFUNCIONARIOS values (2, "Positivo Batel", "Murilo", "22222222222", "+55041922222222", 2, "murilo@hotmail.com",null);  
insert into TBFUNCIONARIOS values (3, "Positivo Água Verde", "Miguel", "33333333333", "+55041933333333", 3, "miguel@hotmail.com",null);      
insert into TBFUNCIONARIOS values (4, "Positivo Pinheirinho", "Marcos", "44444444444", "+55041944444444", 4, "marcos@hotmail.com",2);
insert into TBFUNCIONARIOS values (5, "Positivo Batel", "Alessandro", "55555555555", "+55041911111112", 1, "alessandro@hotmail.com",null);    
insert into TBFUNCIONARIOS values (6, "Positivo Batel", "Vagner", "66666666666", "+55041922222223", 2, "vagner@hotmail.com",null);  
insert into TBFUNCIONARIOS values (7, "Positivo Água Verde", "Edmar", "77777777777", "+55041933333334", 3, "edmar@hotmail.com",1);      
insert into TBFUNCIONARIOS values (8, "Positivo Portão", "Cleimar", "88888888888", "+55041944444445", 4, "cleimar@hotmail.com",null);  

create table TBSALARIO_PROFESSORES(
	codigo_salario int,
	valor_salario float,
	primary key (codigo_salario));
    
insert into TBSALARIO_PROFESSORES values (1, 1000.00);
insert into TBSALARIO_PROFESSORES values (2, 2000.00);   
insert into TBSALARIO_PROFESSORES values (3, 3000.00);   
insert into TBSALARIO_PROFESSORES values (4, 4000.00);
insert into TBSALARIO_PROFESSORES values (5, 1000.00);
insert into TBSALARIO_PROFESSORES values (6, 3500.00);   
insert into TBSALARIO_PROFESSORES values (7, 4600.00);   
insert into TBSALARIO_PROFESSORES values (8, 7800.00);            
    
create table TBRECEBE_SALARIO_PROFESSORES(
	codigo_salario int,
	matricula_professor int,
	data_pagamento_salario datetime,
	primary key (codigo_salario, matricula_professor),
	foreign key (matricula_professor) references TBPROFESSOR (matricula_professor));
    
insert into TBRECEBE_SALARIO_PROFESSORES values (1, 1, "2020-01-10 07:50:00");
insert into TBRECEBE_SALARIO_PROFESSORES values (3, 3, "2023-01-10 07:50:00");
insert into TBRECEBE_SALARIO_PROFESSORES values (4, 4, "2024-01-10 07:50:00");
insert into TBRECEBE_SALARIO_PROFESSORES values (5, 5, "2020-01-10 07:50:00");
insert into TBRECEBE_SALARIO_PROFESSORES values (6, 6, "2022-01-10 07:50:00");   
insert into TBRECEBE_SALARIO_PROFESSORES values (8, 8, "2024-01-10 07:50:00");
    
create table TBSALARIO_FUNCIONARIOS(
	codigo_salario int,
	valor_salario float,
	primary key (codigo_salario));
    
insert into TBSALARIO_FUNCIONARIOS values (1, 3000.00);
insert into TBSALARIO_FUNCIONARIOS values (2, 2000.00);
insert into TBSALARIO_FUNCIONARIOS values (3, 1000.00);
insert into TBSALARIO_FUNCIONARIOS values (4, 10000.00);
insert into TBSALARIO_FUNCIONARIOS values (5, 3500.00);
insert into TBSALARIO_FUNCIONARIOS values (6, 2700.00);
insert into TBSALARIO_FUNCIONARIOS values (7, 1900.00);
insert into TBSALARIO_FUNCIONARIOS values (8, 800.00);
    
create table TBRECEBE_SALARIO_FUNCIONARIOS(
	codigo_salario int,
	matricula_funcionario int,
	data_pagamento_salario datetime,
	primary key (codigo_salario, matricula_funcionario),
	foreign key (matricula_funcionario) references TBFUNCIONARIOS (matricula_funcionario));
    
insert into TBRECEBE_SALARIO_FUNCIONARIOS values (1, 1, "2020-01-01 07:50:00");
insert into TBRECEBE_SALARIO_FUNCIONARIOS values (4, 4, "2024-01-04 07:50:00");
insert into TBRECEBE_SALARIO_FUNCIONARIOS values (5, 5, "2020-01-01 07:50:00");
insert into TBRECEBE_SALARIO_FUNCIONARIOS values (6, 6, "2022-01-02 07:50:00");    
insert into TBRECEBE_SALARIO_FUNCIONARIOS values (7, 7, "2023-01-03 07:50:00");    
insert into TBRECEBE_SALARIO_FUNCIONARIOS values (8, 8, "2024-01-04 07:50:00");      

create table TBPAGAMENTO_MENSALIDADE(
	codigo_pagamento_mensalidade int,
	valor_mensalidade float,
	primary key (codigo_pagamento_mensalidade));

insert into TBPAGAMENTO_MENSALIDADE values (1, 1000.00);
insert into TBPAGAMENTO_MENSALIDADE values (2, 2000.00);  
insert into TBPAGAMENTO_MENSALIDADE values (3, 3000.00);  
insert into TBPAGAMENTO_MENSALIDADE values (4, 4000.00);
insert into TBPAGAMENTO_MENSALIDADE values (5, 1000.00);
insert into TBPAGAMENTO_MENSALIDADE values (6, 2000.00);  
insert into TBPAGAMENTO_MENSALIDADE values (7, 3000.00);  
insert into TBPAGAMENTO_MENSALIDADE values (8, 4000.00);
insert into TBPAGAMENTO_MENSALIDADE values (9, 1000.00);
insert into TBPAGAMENTO_MENSALIDADE values (10, 2000.00);  
insert into TBPAGAMENTO_MENSALIDADE values (11, 3000.00);  
insert into TBPAGAMENTO_MENSALIDADE values (12, 4000.00);
insert into TBPAGAMENTO_MENSALIDADE values (13, 1000.00);
insert into TBPAGAMENTO_MENSALIDADE values (14, 2000.00);  
insert into TBPAGAMENTO_MENSALIDADE values (15, 3000.00);  
insert into TBPAGAMENTO_MENSALIDADE values (16, 4000.00);     
    
create table TBREALIZA_PAGAMENTO_MENSALIDADE(
	matricula_aluno int,
	codigo_pagamento_mensalidade int,
	data_pagamento_mensalidade datetime,
	primary key (matricula_aluno, codigo_pagamento_mensalidade),
	foreign key (matricula_aluno) references TBALUNO (matricula_aluno),
	foreign key (codigo_pagamento_mensalidade) references TBPAGAMENTO_MENSALIDADE (codigo_pagamento_mensalidade));
    
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (1, 1, "2022-01-10 07:50:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (2, 2, "2022-01-05 18:00:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (3, 3, "2022-01-01 07:50:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (4, 4, "2022-01-01 07:50:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (5, 5, "2022-01-10 07:50:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (6, 6, "2022-01-01 18:00:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (7, 7, "2022-01-08 07:50:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (8, 8, "2022-01-01 07:50:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (9, 9, "2022-01-01 07:50:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (10, 10, "2022-01-17 18:00:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (11, 11, "2022-01-01 07:50:00");
insert into TBREALIZA_PAGAMENTO_MENSALIDADE values (12, 12, "2022-01-01 18:00:00");

create table TBLECIONADA_MATERIA_PROFESSOR(
	codigo_materia int,
	matricula_professor int,
	primary key (codigo_materia, matricula_professor),
	foreign key (codigo_materia) references TBMATERIA (codigo_materia),
	foreign key (matricula_professor) references TBPROFESSOR (matricula_professor));
    
insert into TBLECIONADA_MATERIA_PROFESSOR values (1,1);
insert into TBLECIONADA_MATERIA_PROFESSOR values (2,2);
insert into TBLECIONADA_MATERIA_PROFESSOR values (3,3);
insert into TBLECIONADA_MATERIA_PROFESSOR values (4,4);
insert into TBLECIONADA_MATERIA_PROFESSOR values (5,5);
insert into TBLECIONADA_MATERIA_PROFESSOR values (6,6);
insert into TBLECIONADA_MATERIA_PROFESSOR values (7,7);
insert into TBLECIONADA_MATERIA_PROFESSOR values (8,8);

create table TBPOSSUI_MATERIA_TURMA(
	codigo_materia int,
	codigo_turma int,
	primary key (codigo_materia, codigo_turma),
	foreign key (codigo_materia) references TBMATERIA (codigo_materia),
	foreign key (codigo_turma) references TBTURMA (codigo_turma));

insert into TBPOSSUI_MATERIA_TURMA values (1,1);
insert into TBPOSSUI_MATERIA_TURMA values (2,2);
insert into TBPOSSUI_MATERIA_TURMA values (3,3);
insert into TBPOSSUI_MATERIA_TURMA values (4,4);
insert into TBPOSSUI_MATERIA_TURMA values (5,5);
insert into TBPOSSUI_MATERIA_TURMA values (6,6);
insert into TBPOSSUI_MATERIA_TURMA values (7,7);
insert into TBPOSSUI_MATERIA_TURMA values (8,8);
    
-- -----------------------------------------------------------------------------------
-- 01) QUAL A TURMA COM O MAIOR NÚMERO DE ESTUDANTES?
-- (Where)
select T.nome_turma as "Nome da Turma", A.codigo_turma as "Código da Turma", count(*) as "Número de alunos na turma"
from TBALUNO A, TBTURMA T
where A.codigo_turma = T.codigo_turma
group by A.codigo_turma
order by count(*) desc
limit 1;

-- (Inner Join)
select T.nome_turma as "Nome da Turma", A.codigo_turma as "Código da Turma", count(*) as "Número de alunos na turma"
from TBALUNO A
inner join TBTURMA T
on T.codigo_turma = A.codigo_turma
group by A.codigo_turma
order by count(*) desc
limit 1;

-- -----------------------------------------------------------------------------------
-- 02) QUAL SEDE POSSUI O MENOR NÚMERO DE ESTUDANTES?
select A.nome_sede as "Nome da Sede", count(*) as "Número de alunos na sede"
from TBALUNO A
group by A.nome_sede
order by count(*) asc
limit 1;

-- -----------------------------------------------------------------------------------
-- 03) QUAL SEDE POSSUI O MAIOR NÚMERO DE FUNCIONÁRIOS?
select F.nome_sede as "Nome da Sede", count(*) as "Número de funcionários na sede"
from TBFUNCIONARIOS F
group by F.nome_sede
order by count(*) desc
limit 1;

-- -----------------------------------------------------------------------------------
-- 04) QUAIS ALUNOS ATRASARAM O PAGAMENTO DE JANEIRO?
-- (Where)
select A.nome_aluno as "Nome do Aluno", A.matricula_aluno as "Matrícula do aluno"
from TBALUNO A
where A.matricula_aluno not in
	(select RPM.matricula_aluno
	 from TBREALIZA_PAGAMENTO_MENSALIDADE RPM);
     
-- -----------------------------------------------------------------------------------
-- 05) QUEM SÃO OS ALUNOS NOTA 10?
-- (Where)
select A.nome_aluno as "Nome do Aluno", A.matricula_aluno as "Matrícula do aluno"
from TBALUNO A, TBMATERIA_ALUNO_NOTAS MAS
where A.matricula_aluno = MAS.matricula_aluno
	and MAS.nota_aluno_materia = 10;
    
-- (Inner Join)
select A.nome_aluno as "Nome do Aluno", A.matricula_aluno as "Matrícula do aluno"
from TBALUNO A
inner join TBMATERIA_ALUNO_NOTAS MAS
on MAS.matricula_aluno = A.matricula_aluno
where MAS.nota_aluno_materia = 10;

-- -----------------------------------------------------------------------------------
-- 06) QUAL A FREQUÊNCIA DOS ALUNOS NA MATÉRIA DE PORTUGUÊS?
-- (Where)
select MAS.frequencia as "Frequência", A.nome_aluno as "Nome do Aluno"
from TBMATERIA M, TBMATERIA_ALUNO_NOTAS MAS, TBALUNO A
where M.codigo_materia = MAS.codigo_materia
	and MAS.matricula_aluno = A.matricula_aluno
	and M.nome_materia = "Português";

-- (Inner Join)
select MAS.frequencia as "Frequência", A.nome_aluno as "Nome do Aluno"
from TBMATERIA_ALUNO_NOTAS MAS
inner join TBMATERIA M
on M.codigo_materia = MAS.codigo_materia
inner join TBALUNO A
on A.matricula_aluno = MAS.matricula_aluno
where M.nome_materia = "Português";

-- -----------------------------------------------------------------------------------
-- 07) QUAL A MÉDIA DE SALÁRIO DOS PROFESSORES DE TODAS AS SEDES?
select avg(SP.valor_salario) as "Média salarial dos professores"
from TBSALARIO_PROFESSORES SP;

-- -----------------------------------------------------------------------------------
-- 08) QUAL A MÉDIA DE SALÁRIO DOS FUNCIONÁRIOS DE TODAS AS SEDES?
select avg(SF.valor_salario) as "Média salarial dos funcionários"
from TBSALARIO_FUNCIONARIOS SF;

-- -----------------------------------------------------------------------------------
-- 09) QUAIS ALUNOS VIERAM DO "EXPOENTE BATEL"?
-- (Where)
select A.nome_aluno as "Nome do Aluno", A.matricula_aluno as "Matrícula do Aluno"
from TBHISTORICO H, TBALUNO A
where H.matricula_aluno = A.matricula_aluno
	and H.nome_instituicao = "Expoente Batel";

-- (Inner Join)
select A.nome_aluno as "Nome do Aluno", A.matricula_aluno as "Matrícula do Aluno"
from TBALUNO A
inner join TBHISTORICO H
on H.matricula_aluno = A.matricula_aluno
where H.nome_instituicao = "Expoente Batel";

-- -----------------------------------------------------------------------------------
-- 10) QUAIS OS RESPONSÁVEIS QUE SÃO RESPONSÁVEIS POR MAIS DE UM ALUNO?
-- (Where)
select R.nome_responsavel as "Nome do Responsável"
from TBRESPONSAVEL R, TBALUNO A
where R.codigo_responsavel = A.codigo_responsavel
group by R.nome_responsavel
having count(R.nome_responsavel) > 1;

-- (Inner Join)
select R.nome_responsavel as "Nome do Responsável"
from TBRESPONSAVEL R
inner join TBALUNO A
on A.codigo_responsavel = R.codigo_responsavel
group by R.nome_responsavel
having count(R.nome_responsavel) > 1;

-- -----------------------------------------------------------------------------------
-- 11) QUAL PROFESSOR TEM O SALÁRIO MAIS ALTO?
-- (Where)
select P.nome_professor as "Nome do Professor", P.matricula_professor as "Matrícula do Professor", SP.valor_salario as "Salário do Professor"
from TBPROFESSOR P, TBSALARIO_PROFESSORES SP, TBRECEBE_SALARIO_PROFESSORES RSP
where P.matricula_professor = RSP.matricula_professor
	and RSP.codigo_salario = SP.codigo_salario
order by SP.valor_salario desc
limit 1;

-- (Inner Join)
select P.nome_professor as "Nome do Professor", P.matricula_professor as "Matrícula do Professor", SP.valor_salario as "Salário do Professor"
from TBRECEBE_SALARIO_PROFESSORES RSP
inner join TBPROFESSOR P
on P.matricula_professor = RSP.matricula_professor
inner join TBSALARIO_PROFESSORES SP
on SP.codigo_salario = RSP.codigo_salario
order by SP.valor_salario desc
limit 1;

-- -----------------------------------------------------------------------------------
-- 12) QUAL FUNCIONÁRIO TEM O SALÁRIO MAIS BAIXO?
-- (Where)
select F.nome_funcionario as "Nome do Funcionário", F.matricula_funcionario as "Matrícula do Funcionário", SF.valor_salario as "Salário do Funcionário"
from TBFUNCIONARIOS F, TBSALARIO_FUNCIONARIOS SF, TBRECEBE_SALARIO_FUNCIONARIOS RSF
where F.matricula_funcionario = RSF.matricula_funcionario
	and RSF.codigo_salario = SF.codigo_salario
order by SF.valor_salario asc
limit 1;

-- (Inner Join)
select F.nome_funcionario as "Nome do Funcionário", F.matricula_funcionario as "Matrícula do Funcionário", SF.valor_salario as "Salário do Funcionário"
from TBRECEBE_SALARIO_FUNCIONARIOS RSF
inner join TBFUNCIONARIOS F
on F.matricula_funcionario = RSF.matricula_funcionario
inner join TBSALARIO_FUNCIONARIOS SF
on SF.codigo_salario = RSF.codigo_salario
order by SF.valor_salario asc
limit 1;

-- -----------------------------------------------------------------------------------
-- 13) QUAIS ALUNOS MORAM NO PARANÁ?
-- (Where)
select distinct A.matricula_aluno as "Matrícula do Aluno", A.nome_aluno as "Nome do Aluno", UF.cidade_UF as "Estado do Endereço"
from TBALUNO A, TBENDERECO E, TBUF UF
where A.codigo_cidade_endereco = E.codigo_cidade_endereco
	and E.codigo_uf = UF.codigo_uf
	and UF.UF_endereco = "PR";

-- (Inner Join)
select distinct A.matricula_aluno as "Matrícula do Aluno", A.nome_aluno as "Nome do Aluno", UF.cidade_UF as "Estado do Endereço"
from TBENDERECO E
inner join TBALUNO A
on A.codigo_cidade_endereco = E.codigo_cidade_endereco
inner join TBUF UF
on UF.codigo_uf = E.codigo_uf
where UF.UF_endereco = "PR";

-- -----------------------------------------------------------------------------------
-- 14) QUAIS PROFESSORES SÃO ESTAGIÁRIOS?
-- (Where)
select P.nome_professor as "Nome do Professor", P.matricula_professor as "Matrícula do Professor"
from TBPROFESSOR P, TBESTAGIARIO_PROFESSOR EP
where EP.codigo_estagiario_professor = P.codigo_estagiario_professor
	and EP.codigo_estagiario_professor in
	(select P.codigo_estagiario_professor 
	 from TBPROFESSOR);

-- -----------------------------------------------------------------------------------
-- 15) QUAIS FUNCIONÁRIOS SÃO ESTAGIÁRIOS?
-- (Where)
select distinct F.nome_funcionario as "Nome do Funcionário", F.matricula_funcionario as "Matrícula do Funcionário"
from TBFUNCIONARIOS F
where F.codigo_estagiario_funcionario in
	(select EF.codigo_estagiario_funcionario
	 from TBESTAGIARIO_FUNCIONARIO EF);

-- -----------------------------------------------------------------------------------
-- 16) QUAL A NOTA DOS ALUNOS EM "MATEMÁTICA"?
-- (Where)
select M.nome_materia as "Nome da Matéria", MAS.nota_aluno_materia as "Nota do Aluno", A.nome_aluno as "Nome do Aluno"
from TBMATERIA_ALUNO_NOTAS MAS, TBMATERIA M, TBALUNO A
where MAS.codigo_materia = M.codigo_materia
	and A.matricula_aluno = MAS.matricula_aluno
	and MAS.codigo_materia = 1
order by MAS.nota_aluno_materia desc;

-- (Inner Join)
select M.nome_materia as "Nome da Matéria", MAS.nota_aluno_materia as "Nota do Aluno", A.nome_aluno as "Nome do Aluno"
from TBMATERIA_ALUNO_NOTAS MAS
inner join TBMATERIA M
on M.codigo_materia = MAS.codigo_materia
inner join TBALUNO A
on A.matricula_aluno = MAS.matricula_aluno
where MAS.codigo_materia = 1
order by MAS.nota_aluno_materia desc;

-- -----------------------------------------------------------------------------------
-- 17) QUAIS PROFESSORES AINDA NÃO RECEBERAM O SALÁRIO DE JANEIRO?
-- (Where)
select P.nome_professor as "Nome do Professor", P.matricula_professor as "Matrícula do Professor"
from TBPROFESSOR P
where P.matricula_professor not in
	(select RSP.matricula_professor
     from TBRECEBE_SALARIO_PROFESSORES RSP);
     
-- -----------------------------------------------------------------------------------     
-- 18) QUAIS FUNCIONÁRIOS JÁ RECEBERAM O SALÁRIO DE JANEIRO?
-- (Where)
select F.nome_funcionario as "Nome do Funcionário", F.matricula_funcionario as "Matrícula do Funcionário"
from TBFUNCIONARIOS F, TBRECEBE_SALARIO_FUNCIONARIOS RSF
where F.matricula_funcionario = RSF.matricula_funcionario;

-- (Inner Join)
select F.nome_funcionario as "Nome do Funcionário", F.matricula_funcionario as "Matrícula do Funcionário"
from TBFUNCIONARIOS F
inner join TBRECEBE_SALARIO_FUNCIONARIOS RSF
on RSF.matricula_funcionario = F.matricula_funcionario;

-- -----------------------------------------------------------------------------------
-- 19) QUAIS ESTUDANTES POSSUEM BOLSA DE ESTUDOS?
-- (Where)
select A.nome_aluno as "Nome do Aluno", A.matricula_aluno as "Matrícula do Aluno"
from TBALUNO A, TBBOLSA_ALUNO BA
where A.codigo_bolsa = BA.codigo_bolsa
	and BA.codigo_bolsa in
	(select A.codigo_bolsa
	 from TBALUNO);

-- -----------------------------------------------------------------------------------
-- 20) QUAL SEDE POSSUI O MENOR NÚMERO DE PROFESSORES?
select P.nome_sede as "Nome da Sede", count(*) as "Número de professores na sede"
from TBPROFESSOR P
group by P.nome_sede
order by count(*) asc
limit 1;

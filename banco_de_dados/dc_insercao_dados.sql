--INSERÇÃO DE DADOS

insert into cliente (nome, sobrenome, cpf) VALUES 
				    ('pericles', 'Exalta', 12345678910), ('Tiaguinho', 'Sorriso', 12345678911),
                    ('Ferrugem', 'Oxidado', 12345678911), ('Alcione', 'Marrom', 12345678913),
                    ('Gloria', 'Groove', 12345678914), ('Sorriso', 'Maroto', 12345678915);
                   
insert into endereco_cliente (fk_cliente, cep, logradouro, bairro, numero) VALUES
                    (1, 2805304, 'Rua das rosas', 'Parque Campos Floridos', 211),
                    (5, 2805305, 'Rua das begônias amarelas', 'Rios claros', 212),
                    (6, 2805306, 'Rua das margridas floridas',	'Parque Pétalas do mal querer', 213),
                    (4, 2805307, 'Rua Campo de Tulipas', 'Parque Pétalas do bem querer', 214),
                    (2, 2805308, 'Rua Cravo cravado',	'Parque das cem flores', 215),
                    (3, 2805309, 'Rua Lírios do Campo', 'Vales verdes', 216),
                    (6, 2805310, 'Rua dos Girassóis', 'Parque flores murchas',	217);
                    
INSERT INTO produto (tipo_produto, nome_produto, estoque, peso) VALUES 
                    ('fruta', 'amora', TRUE, 2.5), ('legume', 'abóbora', TRUE,	3.5),
                    ('verdura',	'couve', TRUE,	4.5), ('tempero', 'orégano', TRUE, 5.5),
                    ('fruta', 'banana',	TRUE, 6.5), ('fruta', 'laranja', TRUE, 7.5);    
             
INSERT INTO fornecedor (nome_fornecedor, cnpj, fk_produto) VALUES 
                       ('Sérgio', 123456789101, 5), ('Marcelo', 123456789102, 6),
                       ('José', 123456789103, 2);    
  
Insert INTo endereco_fornecedor (fk_fornecedor, cep, logradouro, bairro) Values
                                (3, 65478912,'Av.Tomates vermelhos','Plantação verde'),
                                (1, 65478913,'Rua Casca de bala','Parque venda nova'),
                                (2, 65478914,'Rua Joaninha na flor','Flores do campo');                       
                    
INSERT INTo VENDA (fk_cliente, fk_produto, quantidade_cada, 
                   total_compra, forma_pagamento, fk_endereco_cliente) values
                  (2, 5, 3, 34.00,'pix', 5),
                  (3, 4, 4, 80.60,'cartao', 6),
                  (5, 6, 2, 27.90, 'cartão', 2),
                  (1, 1, 5, 117.90, 'cartao', 1);
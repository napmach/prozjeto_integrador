CREATE TABLE cliente ( id_pessoa SERIAL PRIMARY KEY,
                      nome VARCHAR(20) not NULL, sobrenome VARCHAR(20) NOT NULL,
                      cpf INT UNIQUE);

CREATE table endereco_cliente ( id_endereco SERIAL PRIMARY KEY,
                      cep INT UNIQUE, logradouro VARCHAR(30),
                      bairro VARCHAR(30), numero INT,
                      fk_cliente INT,
                      FOREIGN KEY(fk_cliente) REFERENCES cliente(id_pessoa)
                      ON DELETE CASCADE);
                      
CREATE table produto( id_produto SERIAL PRIMARY key,
                     tipo_produto VARCHAR(15), nome_produto VARCHAR, peso FLOAT,
                     quantidade_estoque INT not NULL);

CREATE table fornecedor( id_fornecedor SERIAL PRIMARY KEY,
                        nome_fornecedor VARCHAR(20) NOT NULL, cnpj INT UNIQUE,
                        fk_produto INT,
                        FOREIGN KEY (fk_produto) REFERENCES produto(id_produto));


CREATE TABLE endereco_fornecedor ( id_endereco_fornecedor SERIAL PRIMARY KEY,
                         cep INT, logradouro VARCHAR(30),
                         bairro VARCHAR(30), numero INT,
                         fk_fornecedor INT,
                         FOREIGN KEY (fk_fornecedor) REFERENCES fornecedor(id_fornecedor)
                         ON DELETE CASCADE);

CREATE TABLE venda( id_pedido SERIAL PRIMARY KEY,
                          fk_cliente INT,
                          FOREIGN KEY(fk_cliente) REFERENCES cliente(id_pessoa)
                          ON DELETE CASCADE, 
                          fk_produto INT,
                          FOREIGN KEY (fk_produto) REFERENCES produto(id_produto)
                          ON DELETE CASCADE,
                           quantidade_cada INT NOT NULL, total_compra FLOAT,
                          forma_pagamento VARCHAR(6), 
                          fk_endereco_cliente INT,
                          FOREIGN KEY (fk_endereco_cliente) REFERENCES endereco_cliente(id_endereco)
                          ON DELETE CASCADE);
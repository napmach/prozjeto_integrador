--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cliente (
    id_pessoa integer NOT NULL,
    nome character varying(20) NOT NULL,
    sobrenome character varying(20) NOT NULL,
    cpf character varying(11) NOT NULL
);


--
-- Name: cliente_id_pessoa_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cliente_id_pessoa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cliente_id_pessoa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cliente_id_pessoa_seq OWNED BY public.cliente.id_pessoa;


--
-- Name: demo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.demo (
);


--
-- Name: endereco_cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.endereco_cliente (
    id_endereco integer NOT NULL,
    cep integer,
    logradouro character varying(30),
    bairro character varying(30),
    numero integer,
    fk_cliente integer
);


--
-- Name: endereco_cliente_id_endereco_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.endereco_cliente_id_endereco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: endereco_cliente_id_endereco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.endereco_cliente_id_endereco_seq OWNED BY public.endereco_cliente.id_endereco;


--
-- Name: endereco_fornecedor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.endereco_fornecedor (
    id_endereco_fornecedor integer NOT NULL,
    cep integer,
    logradouro character varying(30),
    bairro character varying(30),
    numero integer,
    fk_fornecedor integer
);


--
-- Name: endereco_fornecedor_id_endereco_fornecedor_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.endereco_fornecedor_id_endereco_fornecedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: endereco_fornecedor_id_endereco_fornecedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.endereco_fornecedor_id_endereco_fornecedor_seq OWNED BY public.endereco_fornecedor.id_endereco_fornecedor;


--
-- Name: fornecedor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fornecedor (
    id_fornecedor integer NOT NULL,
    nome_fornecedor character varying(20) NOT NULL,
    cnpj character varying(17),
    fk_produto integer
);


--
-- Name: fornecedor_id_fornecedor_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fornecedor_id_fornecedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fornecedor_id_fornecedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fornecedor_id_fornecedor_seq OWNED BY public.fornecedor.id_fornecedor;


--
-- Name: produto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    tipo_produto character varying(15),
    nome_produto character varying,
    peso double precision,
    estoque boolean NOT NULL
);


--
-- Name: produto_id_produto_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: produto_id_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.produto_id_produto_seq OWNED BY public.produto.id_produto;


--
-- Name: venda; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.venda (
    id_pedido integer NOT NULL,
    fk_cliente integer,
    fk_produto integer,
    quantidade_cada integer NOT NULL,
    total_compra double precision,
    forma_pagamento character varying(6),
    fk_endereco_cliente integer
);


--
-- Name: venda_id_pedido_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.venda_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: venda_id_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.venda_id_pedido_seq OWNED BY public.venda.id_pedido;


--
-- Name: cliente id_pessoa; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_pessoa SET DEFAULT nextval('public.cliente_id_pessoa_seq'::regclass);


--
-- Name: endereco_cliente id_endereco; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco_cliente ALTER COLUMN id_endereco SET DEFAULT nextval('public.endereco_cliente_id_endereco_seq'::regclass);


--
-- Name: endereco_fornecedor id_endereco_fornecedor; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco_fornecedor ALTER COLUMN id_endereco_fornecedor SET DEFAULT nextval('public.endereco_fornecedor_id_endereco_fornecedor_seq'::regclass);


--
-- Name: fornecedor id_fornecedor; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fornecedor ALTER COLUMN id_fornecedor SET DEFAULT nextval('public.fornecedor_id_fornecedor_seq'::regclass);


--
-- Name: produto id_produto; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);


--
-- Name: venda id_pedido; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda ALTER COLUMN id_pedido SET DEFAULT nextval('public.venda_id_pedido_seq'::regclass);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_pessoa);


--
-- Name: endereco_cliente endereco_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco_cliente
    ADD CONSTRAINT endereco_cliente_pkey PRIMARY KEY (id_endereco);


--
-- Name: endereco_fornecedor endereco_fornecedor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco_fornecedor
    ADD CONSTRAINT endereco_fornecedor_pkey PRIMARY KEY (id_endereco_fornecedor);


--
-- Name: fornecedor fornecedor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id_fornecedor);


--
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);


--
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id_pedido);


--
-- Name: endereco_cliente endereco_cliente_fk_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco_cliente
    ADD CONSTRAINT endereco_cliente_fk_cliente_fkey FOREIGN KEY (fk_cliente) REFERENCES public.cliente(id_pessoa) ON DELETE CASCADE;


--
-- Name: endereco_fornecedor endereco_fornecedor_fk_fornecedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco_fornecedor
    ADD CONSTRAINT endereco_fornecedor_fk_fornecedor_fkey FOREIGN KEY (fk_fornecedor) REFERENCES public.fornecedor(id_fornecedor) ON DELETE CASCADE;


--
-- Name: fornecedor fornecedor_fk_produto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_fk_produto_fkey FOREIGN KEY (fk_produto) REFERENCES public.produto(id_produto);


--
-- Name: venda venda_fk_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_fk_cliente_fkey FOREIGN KEY (fk_cliente) REFERENCES public.cliente(id_pessoa) ON DELETE CASCADE;


--
-- Name: venda venda_fk_endereco_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_fk_endereco_cliente_fkey FOREIGN KEY (fk_endereco_cliente) REFERENCES public.endereco_cliente(id_endereco) ON DELETE CASCADE;


--
-- Name: venda venda_fk_produto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_fk_produto_fkey FOREIGN KEY (fk_produto) REFERENCES public.produto(id_produto) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


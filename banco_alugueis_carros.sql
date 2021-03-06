PGDMP         1            
    w            alugueis_carros    11.5    11.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16471    alugueis_carros    DATABASE     �   CREATE DATABASE alugueis_carros WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE alugueis_carros;
             postgres    false            �            1259    16490    aluguel    TABLE     �   CREATE TABLE public.aluguel (
    codigo_aluguel integer NOT NULL,
    data_inicial date NOT NULL,
    data_final date NOT NULL,
    valor numeric(10,2) NOT NULL,
    cpf_cliente character varying(11) NOT NULL,
    renavam bigint NOT NULL
);
    DROP TABLE public.aluguel;
       public         postgres    false            �            1259    16488    aluguel_codigo_aluguel_seq    SEQUENCE     �   CREATE SEQUENCE public.aluguel_codigo_aluguel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.aluguel_codigo_aluguel_seq;
       public       postgres    false    199                       0    0    aluguel_codigo_aluguel_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.aluguel_codigo_aluguel_seq OWNED BY public.aluguel.codigo_aluguel;
            public       postgres    false    198            �            1259    16480    carro    TABLE     �   CREATE TABLE public.carro (
    renavam bigint NOT NULL,
    placa character varying(10) NOT NULL,
    observacao json,
    modelo character varying(50) NOT NULL,
    marca character varying(50) NOT NULL
);
    DROP TABLE public.carro;
       public         postgres    false            �            1259    16472    cliente    TABLE     �  CREATE TABLE public.cliente (
    cpf character varying(11) NOT NULL,
    nome character varying(100) NOT NULL,
    rg bigint NOT NULL,
    email character varying(50) NOT NULL,
    tel_cel bigint NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    rua character varying(50) NOT NULL,
    numero integer NOT NULL,
    bairro character varying(50) NOT NULL,
    cidade character varying(50) NOT NULL,
    estado character varying(2) NOT NULL,
    cep integer NOT NULL,
    data_nascimento date NOT NULL
);
    DROP TABLE public.cliente;
       public         postgres    false            �
           2604    16493    aluguel codigo_aluguel    DEFAULT     �   ALTER TABLE ONLY public.aluguel ALTER COLUMN codigo_aluguel SET DEFAULT nextval('public.aluguel_codigo_aluguel_seq'::regclass);
 E   ALTER TABLE public.aluguel ALTER COLUMN codigo_aluguel DROP DEFAULT;
       public       postgres    false    199    198    199                      0    16490    aluguel 
   TABLE DATA               h   COPY public.aluguel (codigo_aluguel, data_inicial, data_final, valor, cpf_cliente, renavam) FROM stdin;
    public       postgres    false    199   �                 0    16480    carro 
   TABLE DATA               J   COPY public.carro (renavam, placa, observacao, modelo, marca) FROM stdin;
    public       postgres    false    197   Q                 0    16472    cliente 
   TABLE DATA               �   COPY public.cliente (cpf, nome, rg, email, tel_cel, ativo, rua, numero, bairro, cidade, estado, cep, data_nascimento) FROM stdin;
    public       postgres    false    196   �                  0    0    aluguel_codigo_aluguel_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.aluguel_codigo_aluguel_seq', 4, true);
            public       postgres    false    198            �
           2606    16495    aluguel aluguel_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT aluguel_pkey PRIMARY KEY (codigo_aluguel);
 >   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT aluguel_pkey;
       public         postgres    false    199            �
           2606    16487    carro carro_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT carro_pkey PRIMARY KEY (renavam);
 :   ALTER TABLE ONLY public.carro DROP CONSTRAINT carro_pkey;
       public         postgres    false    197            �
           2606    16479    cliente cliente_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_email_key;
       public         postgres    false    196            �
           2606    16477    cliente cliente_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cpf);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    196            �
           2606    16496    aluguel cpf_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT cpf_cliente FOREIGN KEY (cpf_cliente) REFERENCES public.cliente(cpf) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT cpf_cliente;
       public       postgres    false    196    2699    199            �
           2606    16501    aluguel renavam    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT renavam FOREIGN KEY (renavam) REFERENCES public.carro(renavam) ON UPDATE CASCADE ON DELETE CASCADE;
 9   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT renavam;
       public       postgres    false    197    199    2701               e   x�u���0�j{	���]����Jǂhh
��~�S��8���ɏ���Z���Q�o�{gm��lTgp�1�r�t&v����醷�1�٣1�Iu(�         �   x�m̱� �����ٚ���Bo�5H:h|w�h����Y>.d����sA���P�6D81m�a� cz_{/�&��c��H���t�>�����+lH6`����l	�nIѻL�����J�,��ť�m�S�r[�Fj���t�F<         �   x���M
�0���^@�L��]�M�Tjd�B�_�O�t�Ǭ�|��ꦽ����M��a2n�z?Aw"������sd����ag�C>$�,�����=�薬�����!�7��D7G��3,��/�h�� ;�$TbBWqG��-R�T����4)�M��ԥlKR�Q	!>*�]�     
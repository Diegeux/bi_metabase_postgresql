CREATE TABLE "DataWarehouse"."TB_DATA"
(
    "Data" date
)

TABLESPACE pg_default;

ALTER TABLE "DataWarehouse"."TB_DATA"
    OWNER to postgres;

CREATE TABLE "DataWarehouse"."TB_LOJA"
(
    "Loja" character varying COLLATE pg_catalog."default" NOT NULL,
    "Cidade" character varying COLLATE pg_catalog."default" NOT NULL,
    "Estado" character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "TB_STORE_pkey" PRIMARY KEY ("Loja")
)

TABLESPACE pg_default;

ALTER TABLE "DataWarehouse"."TB_LOJA"
    OWNER to postgres;
	
CREATE TABLE "DataWarehouse"."TB_PRODUTO"
(
    "ID" character varying COLLATE pg_catalog."default" NOT NULL,
    "NOME" character varying COLLATE pg_catalog."default" NOT NULL,
    "CATEGORIA" character varying COLLATE pg_catalog."default" NOT NULL,
    "SEGMENTO" character varying COLLATE pg_catalog."default" NOT NULL,
    "MARCA" character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "TB_PRODUTO_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE "DataWarehouse"."TB_PRODUTO"
    OWNER to postgres;

CREATE TABLE "DataWarehouse"."TB_VENDAS"
(
    "ID-Produto" character varying COLLATE pg_catalog."default" NOT NULL,
    "ID-Vendedor" numeric NOT NULL,
    "Loja" character varying COLLATE pg_catalog."default" NOT NULL,
    "Data Venda" date NOT NULL,
    "ValorVenda" double precision NOT NULL,
    CONSTRAINT "TB_VENDAS_pkey" PRIMARY KEY ("ID-Produto")
)

TABLESPACE pg_default;

ALTER TABLE "DataWarehouse"."TB_VENDAS"
    OWNER to postgres;
	
CREATE TABLE "DataWarehouse"."TB_VENDEDOR"
(
    "ID-Vendedor" numeric NOT NULL,
    "Nome" character varying COLLATE pg_catalog."default" NOT NULL,
    "Sobrenome" character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "TB_VENDEDOR_pkey" PRIMARY KEY ("ID-Vendedor")
)

TABLESPACE pg_default;

ALTER TABLE "DataWarehouse"."TB_VENDEDOR"
    OWNER to postgres;
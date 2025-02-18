-- Script para criar tabelas no banco de dados

-- Tabela: COMPSIS_ATUALIZA
CREATE TABLE dbo.COMPSIS_ATUALIZA (
    CODIGO nvarchar(100) NULL,
    DESCRICAO nvarchar(255) NULL,
    CUSTO_COMPSIS nvarchar(50) NULL,
    CUSTO_CLIENTES nvarchar(50) NULL,
    CUSTO_TERCEIROS nvarchar(50) NULL,
    DATA nvarchar(50) NULL,
    OBS text NULL,
    PIS float NULL,
    COFINS float NULL,
    ICMS float NULL,
    ST float NULL,
    IPI float NULL
);

-- Tabela: COMPSIS_COMPARATIVO
CREATE TABLE dbo.COMPSIS_COMPARATIVO (
    PN nvarchar(50) NULL,
    DESCRIÇÃO nvarchar(200) NULL,
    VALOR money NULL,
    CODIGO nvarchar(50) NULL,
    ID nvarchar(50) NULL,
    USO nvarchar(50) NULL,
    TIPO nvarchar(50) NULL,
    MACRO nvarchar(50) NULL,
    TIPO_PISTA nvarchar(50) NULL,
    QUANTIDADE nvarchar(50) NULL,
    CREDITO nvarchar(50) NULL,
    CUSTO nvarchar(50) NULL,
    CAIXA nvarchar(50) NULL,
    FORNECIMENTO nvarchar(255) NULL
);

-- Tabela: COMPSIS_INSUMOS
CREATE TABLE dbo.COMPSIS_INSUMOS (
    COD_FORN nvarchar(200) NULL,
    FORNECEDOR nvarchar(200) NULL,
    CLASSE_PRODUTO nvarchar(200) NULL,
    PN nvarchar(200) NULL,
    DESCR_PRODUTO nvarchar(200) NULL,
    UM_PRECIFC nvarchar(10) NULL,
    UNITARIO money NULL,
    ULT_COTACAO nvarchar(50) NULL,
    UM_COMPRA nvarchar(200) NULL,
    NCM nvarchar(10) NULL,
    PIS float NULL,
    COFINS float NULL,
    ICMS float NULL,
    IPI float NULL,
    ISS float NULL,
    ST float NULL
);

-- Tabela: COMPSIS_INSUMOS_3OS
CREATE TABLE dbo.COMPSIS_INSUMOS_3OS (
    COD_FORN nvarchar(200) NULL,
    FORNECEDOR nvarchar(200) NULL,
    CLASSE_PRODUTO nvarchar(200) NULL,
    PN nvarchar(200) NULL,
    DESCR_PRODUTO nvarchar(200) NULL,
    UM_PRECIFC nvarchar(10) NULL,
    UNITARIO money NULL,
    ULT_COTACAO nvarchar(50) NULL,
    UM_COMPRA nvarchar(200) NULL,
    NCM nvarchar(10) NULL,
    PIS float NULL,
    COFINS float NULL,
    ICMS float NULL,
    IPI float NULL,
    ISS float NULL
);

-- Tabela: COMPSIS_INSUMOS_CLIENTE
CREATE TABLE dbo.COMPSIS_INSUMOS_CLIENTE (
    COD_FORN nvarchar(200) NULL,
    FORNECEDOR nvarchar(200) NULL,
    CLASSE_PRODUTO nvarchar(200) NULL,
    PN nvarchar(200) NULL,
    DESCR_PRODUTO nvarchar(200) NULL,
    UM_PRECIFC nvarchar(10) NULL,
    UNITARIO money NULL,
    ULT_COTACAO nvarchar(50) NULL,
    UM_COMPRA nvarchar(200) NULL,
    NCM nvarchar(10) NULL,
    PIS float NULL,
    COFINS float NULL,
    ICMS float NULL,
    IPI float NULL,
    ISS float NULL,
    UF nvarchar(50) NULL,
    ALIQUOTA nvarchar(20) NULL
);

-- Tabela: COMPSIS_OPORTUNIDADES
CREATE TABLE dbo.COMPSIS_OPORTUNIDADES (
    ID int NOT NULL PRIMARY KEY,
    CODIGO nvarchar(50) NULL,
    DATA smalldatetime NULL,
    REVISAO int NULL,
    REVISÃO_ATUAL nchar(3) NULL,
    CLIENTE nvarchar(200) NULL,
    DESCRICAO nvarchar(200) NULL,
    EMISSOR nvarchar(100) NULL,
    VALOR_TOTAL money NULL,
    MARGEM money NULL,
    STATUS nvarchar(30) NULL,
    LOCAL_ARQUIVO nvarchar(200) NULL,
    ID_PAI int NULL
);

-- Tabela: COMPSIS_PERFIS
CREATE TABLE dbo.COMPSIS_PERFIS (
    PERFIL nvarchar(50) NULL,
    BACKGROUND nvarchar(50) NULL,
    OPORTUNIDADE_BASICA nvarchar(50) NULL,
    OPORTUNIDADE_MARGEM nvarchar(50) NULL,
    OPORTUNIDADE_EQUIPAMENTOS nvarchar(50) NULL,
    LISTA_DE_PRODUTOS nvarchar(50) NULL,
    ÍNDICES nvarchar(50) NULL,
    MATERIAIS nvarchar(50) NULL,
    SEC_E_LOG nvarchar(50) NULL,
    CARGO nvarchar(50) NULL,
    SERV_TERCEIROS nvarchar(50) NULL,
    GRUPOS nvarchar(50) NULL,
    PRECO nvarchar(50) NULL,
    RESULT_TOTAL nvarchar(50) NULL,
    RESULT_VENDA nvarchar(50) NULL,
    RESULT_REVENDA nvarchar(50) NULL,
    RESULT_SERVICOS nvarchar(50) NULL,
    RESULT_LICENCA nvarchar(50) NULL,
    PRODUTOS_COMPSIS nvarchar(50) NULL,
    LISTA_PNS nvarchar(50) NULL,
    PRODUTOS_30S nvarchar(50) NULL,
    PRODUTOS_CLIENTE nvarchar(50) NULL,
    DRE nvarchar(50) NULL
);

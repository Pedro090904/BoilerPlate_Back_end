-- Criação do Schema para o SISMOB
CREATE SCHEMA IF NOT EXISTS dados_mobilidade;

-- Ativação da extensão PostGIS
CREATE EXTENSION IF NOT EXISTS postgis;

-- Tabela de Linhas de Mobilidade
CREATE TABLE IF NOT EXISTS dados_mobilidade.tab_linha (
    id_linha integer PRIMARY KEY,
    cd_linha varchar(8) NOT NULL,
    tx_linha varchar(255) NOT NULL,
    vl_tarifa numeric(6, 2) NOT NULL,
    fx_tarifaria varchar(50),
    dataregistro timestamp DEFAULT CURRENT_TIMESTAMP,
    dt_inicial_tarifa date,
    dt_final_tarifa date
);

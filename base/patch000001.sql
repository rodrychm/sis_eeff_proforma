/***********************************I-SCP-RCM-EEF-1-05/05/2023****************************************/
CREATE TABLE eef.tformulario_plantilla (
    id_formulario_plantilla SERIAL,
    codigo VARCHAR(20),
    nombre VARCHAR(100),
    descripcion VARCHAR(500),
    estado VARCHAR(20),
    grupo VARCHAR(30),
    CONSTRAINT pk_tformulario_plantilla__id_formulario_plantilla PRIMARY KEY (id_formulario_plantilla)
) INHERITS (pxp.tbase) WITHPUT oids;

CREATE TABLE eef.tcomponente (
    id_componente SERIAL,
    id_formulario_plantilla INTEGER NOT NULL,
    nombre VARCHAR(100),
    etiqueta VARCHAR(20),
    tipo_dato VARCHAR(50),
    descripcion VARCHAR(500),
    tamano INTEGER,
    tipo_componente VARCHAR(50),
    obligatorio VARCHAR(10),
    catalogo VARCHAR(30),
    control_listado VARCHAR(100),
    orden INTEGER,
    estado VARCHAR(20),
    CONSTRAINT pk_tcomponente__id_componente PRIMARY KEY(id_componente)
) INHERITS (pxp.tbase) WITHPUT oids;

CREATE TABLE eef.tuo_formulario_plantilla (
    id_uo_formulario_plantilla SERIAL,
    id_formulario_plantilla INTEGER NOT NULL,
    id_uo INTEGER NOT NULL,
    id_gestion INTEGER NOT NULL,
    CONSTRAINT pk_tuo_formulario_plantilla__id_uo_formulario_plantilla PRIMARY KEY (id_uo_formulario_plantilla)
) INHERITS (pxp.tbase) WITHPUT oids;

CREATE TABLE eef.telaborador (
    id_elaborador SERIAL,
    id_uo INTEGER,
    id_usuario INTEGER,
    CONSTRAINT pk_telaborador__id_elaborador PRIMARY KEY (id_elaborador)
) INHERITS (pxp.tbase) WITHPUT oids;

CREATE TABLE eef.tmodulo (
    id_modulo SERIAL,
    codigo VARCHAR(20),
    nombre VARCHAR(100),
    CONSTRAINT pk_tmodulo__id_modulo PRIMARY KEY (id_modulo)
) INHERITS (pxp.tbase) WITHPUT oids;

CREATE TABLE eef.tformulario (
    id_formulario SERIAL,
    id_formulario_plantilla INTEGER,
    id_proceso_wf INTEGER,
    id_estado_wf INTEGER,
    id_gestion INTEGER,
    codigo VARCHAR(20),
    num_tramite VARCHAR(200),
    observaciones VARCHAR(2000),
    fecha DATE,
    estado VARCHAR(30),
    CONSTRAINT pk_tformulario__id_formulario PRIMARY KEY (id_formulario)
) INHERITS (pxp.tbase) WITHPUT oids;

CREATE TABLE eef.tformulario_valor (
    id_formulario_valor SERIAL,
    id_formulario INTEGER,
    id_componente INTEGER,
    valor VARCHAR(5000),
    fila INTEGER NOT NULL,
    CONSTRAINT pk_tformulario_valor__id_formulario_valor PRIMARY KEY (id_formulario_valor)
) INHERITS (pxp.tbase) WITHPUT oids;
/***********************************F-SCP-RCM-EEF-1-05/05/2023****************************************/
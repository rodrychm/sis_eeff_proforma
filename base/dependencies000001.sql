/***********************************I-DEP-RCM-EEF-1-05/05/2023****************************************/
SELECT pxp.f_insert_testructura_gui ('EFF', 'SISTEMA');
SELECT pxp.f_insert_testructura_gui ('EEFPAR', 'EEF');
SELECT pxp.f_insert_testructura_gui ('EEFCON', 'EEF');
SELECT pxp.f_insert_testructura_gui ('EEFFOR', 'EEF');
SELECT pxp.f_insert_testructura_gui ('EEFDFDIN', 'EEFCON');
SELECT pxp.f_insert_testructura_gui ('EEFDFHDA', 'EEFCON');
SELECT pxp.f_insert_testructura_gui ('EEFINFOR', 'EEFFOR');
SELECT pxp.f_insert_testructura_gui ('EEFFORM', 'EEFFOR');
SELECT pxp.f_insert_testructura_gui ('EEFVALFORM', 'EEFFOR');
SELECT pxp.f_insert_testructura_gui ('EEFCONFORM', 'EEFFOR');
SELECT pxp.f_insert_testructura_gui ('EEFELA', 'EEFPAR');
SELECT pxp.f_insert_testructura_gui ('EEFMODP', 'EEFPAR');
SELECT pxp.f_insert_testructura_gui ('EEFCAT', 'EEFPAR');

ALTER TABLE eef.tuo_formulario_plantilla
    ADD CONSTRAINT uq_tuo_formulario_plantilla_uo_gestion
    UNIQUE (id_formulario_plantilla, id_uo, id_gestion);
/***********************************F-DEP-RCM-EEF-1-05/05/2023****************************************/
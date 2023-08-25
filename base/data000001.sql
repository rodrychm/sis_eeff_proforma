/***********************************I-DAT-RCM-EEF-1-05/05/2023****************************************/
INSERT INTO segu.tsubsistema ("codigo", "nombre", "fecha_reg", "prefijo", "estado_reg", "nombre_carpeta", "id_subsis_orig")
VALUES (E'EEF', E'Sistema de Formulaición Presupuestaria', NOW(), E'EEF', E'activo', E'FORMULACIÓN PRESUPUESTARIA', NULL);

select pxp.f_insert_tgui ('FORMULACIÓN PRESUPUESTARIA', '', 'EEF', 'si',1 , '', 1, '../../../lib/imagenes/alma32x32.png', '', 'EEF');

select pxp.f_insert_tgui ('Parámetros', 'Parámetros', 'EEFPAR', 'si', 1, '', 2, '', '', 'EEF');
select pxp.f_insert_tgui ('Configuración', 'Configuración', 'EEFCON', 'si', 2, '', 2, '', '', 'EEF');
select pxp.f_insert_tgui ('Formulación', 'Formulación', 'EEFFOR', 'si', 3, '', 2, '', '', 'EEF');

select pxp.f_insert_tgui ('Plantilla de Formularios', 'Plantilla de Formularios', 'EEFDFDIN', 'si', 1, 'sis_eeff_proforma/vista/formulario_plantilla/FormularioPlantilla.php', 2, '', 'FormularioPlantilla', 'EEF');
select pxp.f_insert_tgui ('Habilitación de Plantillas de Formularios', 'Habilitación de Plantillas de Formularios', 'EEFDFDHA', 'si', 2, 'sis_eeff_proforma/vista/uo_formulario_plantilla/UoFormularioPlantilla.php', 2, '', 'UoFormularioPlantilla', 'EEF');
select pxp.f_insert_tgui ('Iniciar Formulación', 'Iniciar Formulación', 'EEFINFOR', 'si', 3, 'sis_eeff_proforma/vista/formulario/Formulario.php', 2, '', 'Formulario', 'EEF');
select pxp.f_insert_tgui ('Llenar Formularios', 'Llenar Formularios', 'EEFFORM', 'si', 4, 'sis_eeff_proforma/vista/formulario_det/FormularioDet.php', 2, '', 'FormularioDet', 'EEF');
select pxp.f_insert_tgui ('Validar Formularios', 'Validar Formularios', 'EEFVALFORM', 'si', 5, 'sis_eeff_proforma/vista/formulario_valor/FormularioValor.php', 2, '', 'FormularioValor', 'EEF');
select pxp.f_insert_tgui ('Consolidar Formularios', 'Consolidar Formularios', 'EEFCONFORM', 'si', 6, 'sis_eeff_proforma/vista/formulario_valor/FormularioValorCon.php', 2, '', 'FormularioValorCon', 'EEF');

select pxp.f_insert_tgui ('Elaboradores', 'Elaboradores', 'EEFELA', 'si', 7, 'sis_eeff_proforma/vista/elaborador/Elaborador.php', 2, '', 'Elaborador', 'EEF');
select pxp.f_insert_tgui ('Módulos de Presupuesto', 'Módulos de Presupuesto', 'EEFMODP', 'si', 8, 'sis_eeff_proforma/vista/modulo/Modulo.php', 2, '', 'Modulo', 'EEF');
select pxp.f_insert_tgui ('Catálogos', 'Catálogos', 'EEFCAT', 'si', 9, 'sis_eeff_proforma/vista/clatalogo/CatalogoEEFF.php', 2, '', 'CatalogoEEFF', 'EEF');
/***********************************F-DAT-RCM-EEF-1-05/05/2023****************************************/

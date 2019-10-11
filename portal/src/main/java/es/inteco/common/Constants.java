/*******************************************************************************
* Copyright (C) 2012 INTECO, Instituto Nacional de Tecnologías de la Comunicación, 
* This program is licensed and may be used, modified and redistributed under the terms
* of the European Public License (EUPL), either version 1.2 or (at your option) any later 
* version as soon as they are approved by the European Commission.
* Unless required by applicable law or agreed to in writing, software distributed under the 
* License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF 
* ANY KIND, either express or implied. See the License for the specific language governing 
* permissions and more details.
* You should have received a copy of the EUPL1.2 license along with this program; if not, 
* you may find it at http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32017D0863
* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
* Modificaciones: MINHAFP (Ministerio de Hacienda y Función Pública) 
* Email: observ.accesibilidad@correo.gob.es
******************************************************************************/
package es.inteco.common;

import java.awt.*;

public interface Constants {

	// ARCHIVOS DE PROPIEDADES

	String CRAWLER_PROPERTIES = "crawler.properties";
	String CRAWLER_CORE_PROPERTIES = "crawler.core.properties";
	String INTAV_PROPERTIES = "intav.properties";
	String PDF_PROPERTIES = "pdf.properties";
	String BASIC_SERVICE_PROPERTIES = "basic.service.properties";
	String MAIL_PROPERTIES = "mail.properties";

	String TRUE = "true";
	String FALSE = "false";

	String LOCALE = "lang";
	String LOGIN_PARAM = "log";

	String LANGUAGE_LIST = "languageList";

	// FORWARD
	String LOAD_SEEDS_FORWARD = "observatorySeed";
	String UPLOAD_CONCLUSION_FORM = "uploadConclusionForm";
	String LOGIN = "loginSistema";
	String EXITO = "exito";
	String EXITO2 = "exito2";
	String NUEVA_SEMILLA_FORWARD = "nuevaSemilla";
	String NUEVO_CERTIFICADO = "nuevoCertificado";
	String ANADIR_SEMILLA = "anadirSemillas";
	String EXITO_MOD = "exitoMod";
	String EXITO_SI = "exitoSi";
	String EXITO_VER = "exitoVer";
	String EXITO_INTERMEDIO = "exitoIntermedio";
	String NO_EXITO = "noExito";
	String EXITO_ELIMINAR = "exitoEliminar";
	String INDICE_GRAFICAS = "indiceGraficas";
	String LIST_ANALYSIS_BY_TRACKING = "listAnalysisByTracking";
	String CHECK_RESULTS = "checkResults";
	String CHECK_OBSERVATORY_RESULTS = "checkObservatoryResults";
	String GET_BROKEN_LINKS = "getBrokenLinks";
	String CERTIFICATE_FORM = "certificateForm";
	String INDEX_ADMIN = "indexAdmin";
	String GET_SEEDS = "getSeeds";
	String GET_SEED_CATEGORIES = "getSeedCategories";
	String SEED_CATEGORIES = "seedCategories";
	String DELETE_CATEGORY = "deleteCategory";
	String DELETE_CATEGORY_CONFIRMATION = "deleteCategoryConfirmation";
	String NEW_SEED_CATEGORY = "newSeedCategory";
	String SEED_CATEGORY_FORM = "seedCategoryForm";
	String ADD_SEED_CATEGORY = "addSeedCategory";
	String EDIT_SEED_CATEGORY = "editSeedCategory";
	String UPDATE_SEED_CATEGORY = "updateSeedCategory";
	String VIEW_SEED_CATEGORY = "viewSeedCategory";
	String DELETE_CATEGORY_SEED_CONFIRMATION = "deleteCategorySeedConfirmation";
	String DELETE_CATEGORY_SEED = "deleteCategorySeed";
	String EDIT_CATEGORY_SEED = "editCategorySeed";
	String NEW_CATEGORY_SEED = "newCategorySeed";
	String CATEGORIA_FORM = "CategoriaForm";
	String ADD_CATEGORY_SEED = "addCategorySeed";
	String UPDATE_CATEGORY_SEED = "updateCategorySeed";
	String CATEGORY_SEED_FORM = "categorySeedForm";
	String GET_CATEGORY_SEEDS_FILE = "getCategorySeedsFile";
	String LOAD_FORM = "loadForm";
	String RASTREO_TEST = "rastreoTest";
	String LAUNCH_TEST = "launchTest";
	String RASTREO_TEST_RESULTS = "rastreoTestResults";
	String CRAWLINGS_MENU = "crawlingsMenu";
	String SECTION_FORM = "sectionForm";
	String GENERATE_ALL_REPORTS = "generateAllReports";

	// XML semillas
	String XML_LISTA = "lista";
	String XML_ID = "id";
	String XML_SEMILLA = "semilla";
	String XML_NOMBRE = "nombre";
	String XML_URLS = "urls";
	String XML_URL = "url";
	String XML_DEPENDENCIA = "depende_de";
	String XML_ACRONIMO = "acronimo";
	String XML_ACTIVA = "activa";
	String XML_IN_DIRECTORY = "en_directorio";
	String XML_SEGMENTO = "segmento";

	String ERROR = "error";
	String ERROR1 = "error1";
	String ERROR_TIMEOUT = "errorTimeout";

	String SHOW_CATEGORY_LIST = "categoryList";
	String NO_PERMISSION = "no_permission";
	String ERROR_PAGE = "errorPage";
	String VOLVER = "volver";
	String VOLVER_CARGA = "volverCarga";
	String VOLVER_CARGA_MENU = "volverCargaMenu";
	String VOLVER_CARGA_SISTEMA = "volverCargaSistema";
	String VOLVER_CARGA_CLIENTE = "volverCargaCliente";
	String VOLVER_CARGA_OBSERVATORIO = "volverCargaObservatorio";
	String VENTANA_CONFIRMACION = "ventanaConfirmacion";
	String LOGIN_CRAWLER = "loginCrawler";
	String NO_RASTREO_PERMISO = "noRastreoPermiso";
	String NO_CARTUCHO_NO_CREATE = "noCartuchoNoCreate";
	String FORWARD_SEMILLA = "semilla";
	String CARGAR_SEMILLAS_OBSERVATORIO = "cargarSemillasObservatorio";
	String GET_FULFILLED_OBSERVATORIES = "getFulfilledObservatories";
	String FULFILLED_OBSERVATORIES = "fulfilledObservatories";
	String GET_ANNEXES = "getAnnexes";

	String CRAWLER_GRAPHIC_TOTAL_RESULTS = "totalResults";
	String CRAWLER_GRAPHIC_GLOBAL_RESULTS = "globalResults";
	String CRAWLER_GRAPHIC_GLOBAL_RESULTS_LIST_N1 = "gResultsList1";
	String CRAWLER_GRAPHIC_GLOBAL_RESULTS_LIST_N2 = "gResultsList2";
	String CRAWLER_GRAPHIC_TOTAL_RESULTS_LIST = "tResultsList";

	String TYPE_OBSERVATORY = "Otype";
	String OBSERVATORY_GRAPHIC = "getObservatoryGraphic";
	int OBSERVATORY_HAVE_RESULTS = 1;
	int OBSERVATORY_HAVE_ONE_RESULT = 2;
	int OBSERVATORY_NOT_HAVE_RESULTS = 0;
	String OBSERVATORY_RESULTS = "existRes";
	String GRAPHIC = "graphic";
	String OBSERVATORY_GRAPHIC_REGENERATE = "reg";
	String GRAPHIC_TYPE = "type";
	String GRAPHIC_VERIFICATION = "verification";
	String GRAPHIC_ASPECT = "aspect";
	String OBSERVATORY_GRAPHIC_PDF_REPORT = "pdfReport";
	String OBSERVATORY_GRAPHIC_GLOBAL_ALLOCATION = "globalAllocation";
	String OBSERVATORY_GRAPHIC_SEGMENTS_MARK = "segmentsMark";
	String OBSERVATORY_GRAPHIC_GROUP_SEGMENT_MARK = "groupSegmentMark";
	String OBSERVATORY_GRAPHIC_GLOBAL_ACCESSIBILITY_ALLOCATION = "globalAccessAllocation";
	String OBSERVATORY_GRAPHIC_ACCESSIBILITY_LEVEL_ALLOCATION_S = "accLevelAllocationS";
	String OBSERVATORY_GRAPHIC_MID_VERIFICATION_N1_S = "midVerificationN1S";
	String OBSERVATORY_GRAPHIC_MID_VERIFICATION_N2_S = "midVerificationN2S";
	String OBSERVATORY_GRAPHIC_MODALITY_VERIFICATION_N1_S = "modalityVerificationN1S";
	String OBSERVATORY_GRAPHIC_MODALITY_VERIFICATION_N2_S = "modalityVerificationN2S";
	String OBSERVATORY_GRAPHIC_MARK_ALLOCATION_S = "markAllocationS";
	String OBSERVATORY_GRAPHIC_MID_ASPECT = "midAspect";
	String OBSERVATORY_GRAPHIC_MID_VERIFICATION_N1 = "midVerificationN1";
	String OBSERVATORY_GRAPHIC_MID_VERIFICATION_N2 = "midVerificationN2";
	String OBSERVATORY_GRAPHIC_EVOLUTION_APPROVAL_LEVEL_A = "evolutionApprovalLevelA";
	String OBSERVATORY_GRAPHIC_EVOLUTION_APPROVAL_LEVEL_AA = "evolutionApprovalLevelAA";
	String OBSERVATORY_GRAPHIC_EVOLUTION_APPROVAL_LEVEL_NV = "evolutionApprovalLevelNV";
	String OBSERVATORY_GRAPHIC_EVOLUTION_MID_MARK = "midMark";
	String OBSERVATORY_GRAPHIC_MODALITY_VERIFICATION_N1 = "modalityVerificationN1";
	String OBSERVATORY_GRAPHIC_MODALITY_VERIFICATION_N2 = "modalityVerificationN2";
	String OBSERVATORY_GRAPHIC_EVOLUTION_VERIFICATION = "verification";
	String OBSERVATORY_GRAPHIC_INITIAL = "initial";
	String OBSERVATORY_GRAPHIC_RGENERATE = "regenerateGraphic";
	String OBSERVATORY_GRAPHIC_GLOBAL = "global";
	String OBSERVATORY_GRAPHIC_GLOBAL_DATA_LIST_DAG = "globalDataListDAG";
	String OBSERVATORY_GRAPHIC_GLOBAL_DATA_LIST_CAS = "globalDataListCAS";
	String OBSERVATORY_GRAPHIC_GLOBAL_DATA_LIST_CPS = "globalDataListCPS";
	String OBSERVATORY_GRAPHIC_GLOBAL_DATA_LIST_CMA = "globalDataListCMA";
	String OBSERVATORY_GRAPHIC_GLOBAL_DATA_LIST_CMVI = "globalDataListCMVI";
	String OBSERVATORY_GRAPHIC_GLOBAL_DATA_LIST_CMVII = "globalDataListCMVII";
	String OBSERVATORY_GRAPHIC_GLOBAL_DATA_LIST_MODALITY_VERIFICATION_I = "globalDataListModalityVerificationI";
	String OBSERVATORY_GRAPHIC_GLOBAL_DATA_LIST_MODALITY_VERIFICATION_II = "globalDataListModalityVerificationII";
	String OBSERVATORY_GRAPHIC_SEGMENT_DATA_LIST_DP = "segmentDataListDP";
	String OBSERVATORY_GRAPHIC_COMPARATIVE = "comp";
	String OBSERVATORY_GRAPHIC_CATEGORIES = "cat";
	String OBSERVATORY_NUM_CAS_GRAPH = "numGraphCAS";
	String OBSERVATORY_NUM_CPS_GRAPH = "numGraphCPS";
	String OBSERVATORY_NUM_GRAPH = "numGraph";
	String OBSERVATORY_GRAPHIC_EVOLUTION_111_VERIFICATION = "1.1.1";
	String OBSERVATORY_GRAPHIC_EVOLUTION_112_VERIFICATION = "1.1.2";
	String OBSERVATORY_GRAPHIC_EVOLUTION_113_VERIFICATION = "1.1.3";
	String OBSERVATORY_GRAPHIC_EVOLUTION_114_VERIFICATION = "1.1.4";
	String OBSERVATORY_GRAPHIC_EVOLUTION_115_VERIFICATION = "1.1.5";
	String OBSERVATORY_GRAPHIC_EVOLUTION_116_VERIFICATION = "1.1.6";
	String OBSERVATORY_GRAPHIC_EVOLUTION_117_VERIFICATION = "1.1.7";
	String OBSERVATORY_GRAPHIC_EVOLUTION_121_VERIFICATION = "1.2.1";
	String OBSERVATORY_GRAPHIC_EVOLUTION_122_VERIFICATION = "1.2.2";
	String OBSERVATORY_GRAPHIC_EVOLUTION_123_VERIFICATION = "1.2.3";
	String OBSERVATORY_GRAPHIC_EVOLUTION_124_VERIFICATION = "1.2.4";
	String OBSERVATORY_GRAPHIC_EVOLUTION_125_VERIFICATION = "1.2.5";
	String OBSERVATORY_GRAPHIC_EVOLUTION_126_VERIFICATION = "1.2.6";
	String OBSERVATORY_GRAPHIC_EVOLUTION_211_VERIFICATION = "2.1.1";
	String OBSERVATORY_GRAPHIC_EVOLUTION_212_VERIFICATION = "2.1.2";
	String OBSERVATORY_GRAPHIC_EVOLUTION_213_VERIFICATION = "2.1.3";
	String OBSERVATORY_GRAPHIC_EVOLUTION_214_VERIFICATION = "2.1.4";
	String OBSERVATORY_GRAPHIC_EVOLUTION_215_VERIFICATION = "2.1.5";
	String OBSERVATORY_GRAPHIC_EVOLUTION_216_VERIFICATION = "2.1.6";
	String OBSERVATORY_GRAPHIC_EVOLUTION_217_VERIFICATION = "2.1.7";
	String OBSERVATORY_GRAPHIC_EVOLUTION_221_VERIFICATION = "2.2.1";
	String OBSERVATORY_GRAPHIC_EVOLUTION_222_VERIFICATION = "2.2.2";
	String OBSERVATORY_GRAPHIC_EVOLUTION_223_VERIFICATION = "2.2.3";
	String OBSERVATORY_GRAPHIC_EVOLUTION_224_VERIFICATION = "2.2.4";
	String OBSERVATORY_GRAPHIC_EVOLUTION_225_VERIFICATION = "2.2.5";
	String OBSERVATORY_GRAPHIC_EVOLUTION_226_VERIFICATION = "2.2.6";

	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_A = "evolutionDataListA";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AA = "evolutionDataListAA";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_NV = "evolutionDataListNV";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_MID_PUNT = "evolutionDataListMidPunt";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V111 = "evolutionDataList111";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V112 = "evolutionDataList112";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V113 = "evolutionDataList113";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V114 = "evolutionDataList114";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V115 = "evolutionDataList115";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V116 = "evolutionDataList116";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V117 = "evolutionDataList117";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V121 = "evolutionDataList121";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V122 = "evolutionDataList122";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V123 = "evolutionDataList123";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V124 = "evolutionDataList124";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V125 = "evolutionDataList125";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V126 = "evolutionDataList126";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V211 = "evolutionDataList211";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V212 = "evolutionDataList212";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V213 = "evolutionDataList213";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V214 = "evolutionDataList214";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V215 = "evolutionDataList215";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V216 = "evolutionDataList216";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V217 = "evolutionDataList217";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V221 = "evolutionDataList221";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V222 = "evolutionDataList222";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V223 = "evolutionDataList223";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V224 = "evolutionDataList224";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V225 = "evolutionDataList225";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V226 = "evolutionDataList226";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AG = "evolutionDataListAG";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AAL = "evolutionDataListAAL";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AP = "evolutionDataListAP";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AE = "evolutionDataListAE";
	String OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AN = "evolutionDataListAN";

	String OBSERVATORY_GRAPHIC_GLOBAL_FORWARD = "getGlobalGraphics";
	String OBSERVATORY_GRAPHIC_SEGMENT_FORWARD = "getSegmentGraphics";
	String OBSERVATORY_GRAPHIC_EVOLUTION_FORWARD = "getEvolutionGraphics";

	String OBSERVATORY_GRAPHIC_ASPECT_GENERAL_ID = "1";
	String OBSERVATORY_GRAPHIC_ASPECT_ALTERNATIVE_ID = "2";
	String OBSERVATORY_GRAPHIC_ASPECT_PRESENTATION_ID = "3";
	String OBSERVATORY_GRAPHIC_ASPECT_STRUCTURE_ID = "4";
	String OBSERVATORY_GRAPHIC_ASPECT_NAVIGATION_ID = "5";

	String OBSERVATORY_GRAPHIC_ASPECT_GENERAL = "General";
	String OBSERVATORY_GRAPHIC_ASPECT_ALTERNATIVE = "Alternativas";
	String OBSERVATORY_GRAPHIC_ASPECT_PRESENTATION = "Presentación";
	String OBSERVATORY_GRAPHIC_ASPECT_STRUCTURE = "Estructura";
	String OBSERVATORY_GRAPHIC_ASPECT_NAVIGATION = "Navegación";

	String OBS_PAGINATION_RESULT_FROM = "resultFrom";
	String OBS_PAGINATION_RESULTNA_FROM = "resultFromNA";
	String OBS_PAGINATION = "pagination";
	String SEMILLA_OK_NUEVO = "semillaOKNuevo";
	String SEMILLA_OK_MODIFICAR = "semillaOKModificar";
	String SEMILLA_ELIMINADA = "semillaEliminada";
	String SEMILLA_EDITADA = "semillaEditada";
	String USUARIO_DUPLICADO = "usuarioDuplicado";
	String FORMATO_FECHA_INCORRECTO = "formatoFechaIncorrecto";

	String NUEVO_RASTREO_CLIENTE = "nuevoRastreoCliente";

	String EXPORT_PDF_TYPE = "exportType";
	String EXPORT_PDF_INTAV = "intavPDF";
	String EXPORT_PDF_INTAV_SIMPLE = "intavSimplePDF";
	String EXPORT_PDF_LENOX = "lenoxPDF";
	String EXPORT_PDF_REGENERATE = "regeneratePDF";
	String EXPORT_ALL_PDFS = "exportAllPdfs";

	String PDF_ERROR_FORWARD = "verRastreosRealizados";

	Color ROJO_INTECO = new Color(225, 18, 13);
	Color ROSA_INTECO = new Color(255, 225, 225);
	Color NARANJA_MP = new Color(245, 164, 55);
	Color VERDE_O_MP = new Color(106, 130, 54);
	Color VERDE_C_MP = new Color(126, 154, 64);

	Color COLOR_RESULTADO_0_FALLA = new Color(225, 18, 13);
	// public static final Color COLOR_RESULTADO_0_PASA = new Color(247, 150,
	// 70);
	Color COLOR_RESULTADO_0_PASA = NARANJA_MP;// ConstantsFont.WARNING_COLOR;
	Color COLOR_RESULTADO_1_PASA = Color.WHITE;

	Color GRIS_MUY_CLARO = new Color(245, 245, 245);

	// ATRIBUTES

	String NO_DEPENDENCE = "no_dependence";
	String UPLOAD_PAGE = "upLoadPage";
	String UPLOAD_FILE = "upLoadFile";
	String APLICATION_NAME = "/oaw";
	String USER = "user";
	String PASS = "pass";
	String ADMINISTRADOR = "Administrador";
	String USUARIO = "usuario";
	String ACTION = "action";
	String ACCION = "accion";
	String ACCION_ANADIR = "anadir";
	String ACCION_ACEPTAR = "aceptar";
	String ACCION_DE_OBSERVATORIO = "deObservatorio";
	String ACCION_SUBIR = "subir";
	String ACCION_MODIFICAR = "modificar";
	String ACCION_RELOAD = "reload";
	String ACCION_INSTALAR = "instalar";
	String ACCION_DESINSTALAR = "desinstalar";
	String ACCION_BORRAR = "borrar";
	String ACCION_BORRAR_EJECUCION = "borrarEx";
	String ACCION_LANZAR_EJECUCION = "lanzarEjecucion";
	String FORWARD_THROW_SEED_CONFIRMATION = "throwSeedconfirmation";
	String ACCION_CONFIRMACION_BORRAR = "confirmacion";
	String ACCION_CONFIRMACION_BORRAR_EX_SEED = "confirmacionExSeed";
	String ACCION_MOSTRAR_LISTA_RESULTADOS = "listaResultados";
	String ACCION_SEED_DETAIL = "seedDetailAction";
	String ACCION_EXPORT_ALL = "exportAllSeeds";
	String ACCION_IMPORT_ALL = "loadSeedsFile";
	String ACCION_SEPARATE_SEED = "separateSeed";
	String ACTION_GET_EVALUATION = "getEvaluation";
	String ACTION_GET_DETAIL = "getDetail";
	String ACTION_RECOVER_EVALUATION = "recoverEvaluation";
	String ACTION_GET_HTML_SOURCE = "getHtmlSource";
	String FORWARD_RECOVER_EVALUATION = "showAnalysisFromCrawlerRecover";
	String ACCION_EDIT_SEED = "editSeed";
	String FORWARD_OBSERVATORY_EDIT_SEED = "editObservatorySeed";
	String EXPORT_ALL_PDF_FORWARD = "exportAllPdfs";
	String EXPORT_ALL_PDF_FORWARD_MULTILANGUAGE = "exportAllPdfsM";
	String ACCION_ADD_SEED = "addSeed";
	String SEED_DETAIL = "seedDetail";
	String USERNAME = "username";
	String USUARIO_MODIFICAR = "usuarioModificar";
	String CONFIGURADOR = "Configurador";
	String VISUALIZADOR = "Visualizador";
	String VALEMAIL = "valEmail";
	String ROLE = "role";
	String ROLE_TYPE = "roleType";
	String FILE_CARTUCHO = "cartucho";
	String CARTUCHO = "cartucho";
	String PARAM_CONTROL = "paramControl";
	String RASTREOS = "rastreos";
	String RASTREOS_REALIZADOS = "rastreosRealizados";
	String RASTREOS_CLIENTE = "rastreosCliente";
	String HILOS = "hilos";
	String CONFIRMACION = "confirmacion";
	String CONFIRMACION2 = "confirmacion2";
	String EDIT_SEED = "editSeed";
	String CONFIRMACION_SI = "si";
	String CATEGORY_NAME = "namecat";
	String ID_CATEGORIA = "idcat";
	String ID_CARTUCHO = "idCartucho";
	String ID_TERMINO = "idter";
	String ID_CATEGORIA_TERMINO = "idcatTerminoCat";
	String ID_TERMINO_CATEGORIA = "idcatTerminoCat";
	String NOMBRE_ANTIGUO = "nombreAntiguo";
	String ACTION_FOR = "actionFor";
	String ACCION_FOR = "accionFor";
	String ESTADO_ANTERIOR = "estado_anterior";
	String RASTREO = "rastreo";
	String RASTREO_LIST_FORM = "rastreoForm";
	String RASTREOS_REALIZADOS_FORM = "rrForm";
	String RASTREO_INTERMEDIO = "rastreoIntermedio";
	String COMANDO = "comando";
	String COM_USER = "user";
	String COM_PASS = "pass";
	String VECES_TIMEOUT = "vecesTimeout";
	String VECES_BORRADO = "vecesBorrado";
	String LAUNCH = "LAUNCH";
	String LANZAR1 = "LANZAR";
	String STOP = "STOP";
	String PARAR1 = "PARA";
	String LANZAR = "Lanzar ";
	String LANZADO = "LANZANDO ";
	String STOPPED = "stopped";
	String TERMINADO = "terminado";
	String ON = "on";
	String PARAR = "Parar ";
	String PARANDO = "PARANDO ";
	String OPCION = "opcion";
	String OPCION_INTERMEDIO = "opcionIntermedio";
	String INTERMEDIO = "intermedio";
	String OPCION_LANZAR = "lanzar";
	String ESTADO = "estado";
	String ESTADO_INTERMEDIO = "estadoIntermedio";
	String ESTADO_TERMINADO = "TERMINADO";
	String ESTADO_PARADO = "PARADO";
	String USER_INTERMEDIO = "userIntermedio";
	String PASS_INTERMEDIO = "passIntermedio";
	String OPCION_ESTADISTICA = "estadistica";
	String ID_SESION = "idSesion";
	String ENCRIPTADO = "encriptado";
	String OPCION_AMPLIAR = "opcion_ampliar";
	String COD_RASTREO = "cod_rastreo";
	String USER_AMPLIAR = "user_ampliar";
	String PASS_AMPLIAR = "pass_ampliar";
	String RUTA = "ruta";
	String TAR1 = "tar1";
	String ID_RASTREO_SEMILLA = "idRastreoSemilla";
	String TIPO_LISTA = "tipoLista";
	String LISTA_NO = "listaNo";
	String ARCHIVO_LISTA_NO = "archivoListaNo";
	String LISTA_RAST = "listaRast";
	String ARCHIVO_LISTA_RAST = "archivoListaRast";
	String ID_RASTREO = "idrastreo";
	String RUTA_ALEATORIA = "rutaAleatoria";
	String FECHA = "fecha";
	String HORA = "hora";
	String NO = "NO";
	String SI = "SÍ";
	String CONF_NO = "no";
	String CONF_SI = "si";
	String CATEGORIZACION_VECTOR = "categorizacionVector";
	String ACTION_SCRIPT = "actionScript";
	String TODOS = "Todos";
	String CARTUCHOS_VECTOR = "cartuchosVector";
	String TIPOS_VECTOR = "tiposVector";
	String HILOS_VECTOR = "hilosVector";
	String MODOS_VECTOR = "modosVector";
	String PROFUNDIDADES_VECTOR = "profundidadesVector";
	String TOPN_VECTOR = "topnVector";
	String ALERTAS_VECTOR = "alertasVector";
	String CODIGO = "codigo";
	String HTML = "html";
	String HTM = "htm";
	String ASP = "asp";
	String JSP = "jsp";
	String PDF = "pdf";
	String TXT = "txt";
	String PHP = "php";
	String URL_SEMILLA = "url_semilla";
	String UMBRAL_ALARMA = "umbralAlarma";
	String WHITE_LIST = "whiteList";
	String EDITAR_SEMILLA = "editarSemilla";
	String EDITAR_LISTA_NO = "editarListaNo";
	String EDITAR_LISTA_RAST = "editarListaRast";
	String LOCAL_LISTA_NO = "localListaNo";
	String LOCAL_LISTA_RAST = "localListaRast";
	String NO_DISPONIBLE = "NO DISPONIBLE";
	String NOMBRE_ANTIGUO2 = "nombre_antiguo";
	String RASTREO_ANTIGUO = "rastreo_antiguo";
	String TIPO = "tipo";
	String NUEVO = "nuevo";
	String TIPO_SUBIR_SEMILLA = "tipoSubirSemilla";
	String RUTA_PARA_VOLVER = "rutaParaVolver";
	String ARCHIVO_D = "archivo_d";
	String URLS_STRING = "urls_string";
	String NUEVO_TERMINO = "nuevoTermino";
	String SEGUNDA = "segunda";
	String SEMILLA = "semilla";
	String CARGAR_SEMILLA = "Cargar Semilla";
	String CONTROL = "control";
	String QUERY = "query";
	String PAGINAS = "paginas";
	String ARCHIVO = "archivo";
	String ACEPTAR_SOBREESCRIBIR = "aceptarSobreescribir";
	String MODIFICAR_RASTREO_JSP = "modificarRastreo.jsp";
	String NUEVO_RASTREO_JSP = "nuevoRastreo.jsp";
	String LISTA_NO_RAST_MAY = "Lista no Rastreable";
	String LISTA_NO_RAST_MIN = "Lista No Rastreable";
	String LISTA_RAST_MAY = "Lista Rastrebale";
	String LISTA_RAST_MIN = "Lista Rastreable";
	String LISTA_SEMILLAS = "listaSemillas";
	String DE_MENU = "deMenu";
	String DE_CUENTA = "deCuenta";
	String ROL_CONF = "conf";
	String DE_PASS = "dePass";
	String ROL_VISOR = "visor";
	String ROL_ADMIN = "admin";
	String CHECK = "check";
	String IF_ADMIN = "ifadmin";
	String IF_VISOR = "ifvisor";
	String IF_CONFIG = "ifconfig";
	String IF_CONFIG_ADMIN = "ifConfigAdmin";
	String CRAWLINGS_FORM = "crawlingsForm";
	String CARGAR_CARTUCHO_FORM = "CargarCartuchosForm";
	String NUEVO_USUARIO_SISTEMA_FORM = "NuevoUsuarioSistemaForm";
	String CARGAR_CATEGORIA_FORM = "CargarCategoriasForm";
	String CARGAR_CUENTA_USUARIO_FORM = "CargarCuentasUsuarioForm";
	String CARGAR_OBSERVATORIO_FORM = "CargarObservatorioForm";
	String NUEVO_OBSERVATORIO_FORM = "NuevoObservatorioForm";
	String MODIFICAR_OBSERVATORIO_FORM = "ModificarObservatorioForm";
	String CARGAR_RASTREOS_FORM = "CargarRastreosForm";
	String CARGAR_USUARIOS_SISTEMA_FORM = "CargarUsuariosSistemaForm";
	String ID_USUARIO = "idUsuario";
	String ID = "id";
	String ID_CHECK = "idCheck";
	String CODE = "code";
	String GET_REGENERATE = "getRegenerate";
	String ES_PRIMERA = "esPrimera";
	String LISTADO_CUENTAS_CLIENTE = "listadoCuentasCliente";
	String LISTADO_CARTUCHOS = "listadoCartuchos";
	String LISTADO_SEMILLAS = "listadoSemillas";
	String LISTADO_NORMAS = "listadoNormas";
	String MINUTES = "minutes";
	String HOURS = "hours";
	String LIST_ANALYSIS = "listAnalysis";
	String EVALUATION_FORM = "evaluationForm";
	String FAILED_CHECKS = "failedChecks";
	String MENU = "menu";
	String SUBMENU = "submenu";
	String MENU_PASSWORD = "menuPassword";
	String MENU_USERS = "menuUsers";
	String MENU_CLIENT = "menuClient";
	String MENU_INTECO_OBS = "menuObservatory";
	String MENU_OTHER_OPTIONS = "menuOtherOptions";
	String MENU_SERVICIO_DIAGNOSTICO = "menuServicioDiagnostico";
	String MENU_CRAWLINGS = "menuCrawlings";
	String MENU_SEEDS = "menuSeeds";
	String MENU_CLIENT_CRAWLINGS = "menuClientCrawlings";
	String MENU_CLIENT_CRAWLINGS_ACCOUNT = "menuClientCrawlingsAccount";
	String MENU_CERTIFICATES = "menuCertificates";
	String SUBMENU_IP = "submenuIp";
	String SUBMENU_GOOGLE = "submenuGoogle";
	String SUBMENU_LISTADO_SEM = "submenuListadoSem";
	String SUBMENU_CATEGORIES = "submenuCategories";
	String SUBMENU_OBS_SEMILLA = "submenuSemillaObs";
	String SUBMENU_OBS_DEPENDENCIAS = "submenuDependenciasObs";
	String SUBMENU_OBSERVATORIO = "submenuObservatorio";
	String SUBMENU_SERVICIO_DIAGNOSTICO = "submenuServicioDiagnostico";
	String SUBMENU_CONECTIVIDAD = "submenuConectividad";
	String URL = "url";
	String BROKEN_LINKS = "brokenLinks";
	String ALIAS = "alias";
	String CERTIFICATES = "certificates";
	String CATEGORIES_LIST = "categoriesList";
	String VER_CUENTA_USUARIO_FORM = "VerCuentaUsuarioForm";
	String VER_OBSERVATORIO_FORM = "VerObservatorioForm";
	String LIST_ACCOUNTS = "listAccounts";
	String GET_DETAIL = "getDetail";
	String RETURN_OBSERVATORY_RESULTS = "observatoryResults";

	String LOAD_CERTIFICATE_FORM = "loadCertificateForm";
	String UPLOAD_CERTIFICATE = "uploadCertificate";
	String DELETE_CERTIFICATE = "deleteCertificate";
	String CERTIFICATE_ALIAS = "certificateAlias";
	String NUM_CERTIFICATES = "numCertificates";
	String DELETE_CONFIRMATION = "deleteConfirmation";

	int STATUS_NOT_LAUNCHED = 1;
	int STATUS_LAUNCHED = 2;
	int STATUS_STOPPED = 3;
	int STATUS_FINALIZED = 4;

	long ALL_DATA = 0;

	int CLIENT_ACCOUNT_TYPE = 0;
	int OBSERVATORY_TYPE = 1;

	String LIST_PAGE_LINKS = "listPageLinks";
	String LIST_PAGE_LINKS2 = "listPageLinks2";
	String PAG_PARAM = "p";
	String PAG_PARAM2 = "p2";
	int NO_PAGINACION = -1;
	String BEGIN = "begin";
	String PAGE_NUMBER = "numPag";

	String PAGINATION_CURRENT_STYLE = "current";
	String PAGINATION_STYLE = "pagination";
	String PAGINATION_PF_STYLE = "paginationPF";

	String ES_CLIENTE = "esCliente";
	String IS_CLIENT = "isCliente";
	String IS_PRIMARY = "isPrimary";
	String ES_OBSERVATORIO = "esObserv";
	String ID_CUENTA = "id_cuenta";
	String ID_OBSERVATORIO = "id_observatorio";
	String ID_EX_OBS = "idExObs";
	String CUENTA_ELIMINAR = "eliminarCuenta";

	String ANCLA_PDF = "anclaPdf";

	String BOTON_SEMILLA_GOOGLE = "botonSemillaGoogle";
	String BOTON_SEMILLA_IP = "botonSemillaIp";
	String BOTON_SEMILLA_WEB = "botonSemillaWeb";

	String INICIAL = "inicial";

	int ID_LISTA_ALL = -1;
	int ID_LISTA_SEMILLA = 1;
	int ID_LISTA_RASTREABLE = 2;
	int ID_LISTA_NO_RASTREABLE = 3;
	int ID_LISTA_SEMILLA_OBSERVATORIO = 4;

	String ID_OBSERVATORY_GUIDELINE = "4";
	String OBSERVATORY_GRAPHIC_INTAV = "getObservatoryGraphicIntav";
	String GET_SEED_RESULTS_FORWARD = "resultadosObservatorioSemillas";
	String SEED_LIST = "seedList";
	String OBSERVATORY_SEED_LIST = "observatorySeedList";
	String OBSERVATORY_FORM = "observatoryForm";
	String OBSERVATORY_SEED_FORM = "SemillaObservatorioForm";
	String OBSERVATORY_ID = "id_observatorio";
	String OBSERVATORY = "observatorio";
	String LOAD_OBSERVATORY_MOD_FORWARD = "loadObsMod";
	String VOLVER_MOD_SEMILLA = "modSeemilla";
	String SEMILLA_FORM = "SemillaForm";
	String SEMILLA_SEARCH_FORM = "SemillaSearchForm";
	String ID_SEMILLA = "idSemilla";
	String IS_NEW = "isNew";

	String CONFIG = "config";
	String EDIT = "edit";
	String CONFIG_FORM = "configForm";
	String CONFIG_C_FORM = "ConfigCForm";
	String CONFIG_D_FORM = "ConfigDForm";
	String SUBMIT_EDIT = "submitEdit";
	String TERMS = "terms";
	String DELETE_TERMS = "deleteTerms";
	String ID_HIT = "idHit";
	String HEADER = "header";
	String TITLE = "title";
	String INFO = "info";
	String CAPTION = "caption";
	String CONFIRMACION_ELIMINAR_TERM = "eliminaTerminoConf";
	String CONFIRMACION_DELETE = "confirmacionDelete";
	String CONFIRMACION_RELANZAR = "confirmacionRelanzar";
	String CONFIRMACION_IMPORTAR= "confirmacionImportar";
	String TERM = "term";
	String MALWARE_TERM_FORM = "MalwareTermForm";
	String SAVE_TERM = "saveTerm";
	String EDIT_TERM = "editTerm";
	String IS_UPDATE = "isUpdate";
	String LOAD = "load";
	String MULTIMEDIA_FILE = "MultimediaFile";
	String TYPE_LIST_FILE = "typeListFile";
	String TYPE_LIST_FILE_BL = "bl";
	String TYPE_LIST_FILE_WL = "wl";
	String LIST_FILE = "listFile";
	String EDIT_FILE_FORM = "EditFileForm";
	String FILE_CONTENT_LIST = "fileContentList";
	String SHOW_FILE = "showFile";
	String FILE = "file";

	int COMPLEXITY_SEGMENT_NONE = 0;
	String SCORE = "score";

	int OBS_VALUE_NOT_SCORE = 0;
	int OBS_VALUE_RED_ZERO = 1;
	int OBS_VALUE_GREEN_ZERO = 2;
	int OBS_VALUE_GREEN_ONE = 3;

	String OBS_VALUE_GREEN_SUFFIX = "_green";
	String OBS_VALUE_RED_SUFFIX = "_red";

	String OBS_A = "A";
	String OBS_AA = "AA";
	String OBS_NV = "NV";
	String OBS_PARCIAL = "PARCIAL";
	String OBS_A_LABEL = "Nivel A";
	String OBS_AA_LABEL = "Nivel AA";
	String OBS_NV_LABEL = "No Válido";
	String OBS_TYPE_NONE = "None";
	String OBS_N1 = "Nivel 1";
	String OBS_N2 = "Nivel 2";
	String OBS_PRIORITY_1 = "Priority 1";
	String OBS_PRIORITY_2 = "Priority 2";
	String OBS_PRIORITY_NONE = "none";

	String ADD_OBSERVATORY_SEED_LIST = "addSeedList";
	String OTHER_OBSERVATORY_SEED_LIST = "otherSeedList";

	String RESULTS_PAGINATION_INITIAL_VALUE = "resultsPaginationInitialValue";
	String CHECK_RESULTS_DETAIL = "checkResultsDetail";
	String PROBLEMA = "problem";

	int STATUS_ERROR = 0;
	int STATUS_SUCCESS = 1;
	int STATUS_EXECUTING = 2;

	String GLOBAL_SCORE = "globalScore";
	String LEVEL_SCORE = "levelScore";
	String SUITABILITY_SCORE = "suitabilityScore";

	String OBSERVATORY_KEY_CACHE = "observatoryKeyCache";

	String MINISTERIO_P = "MP";

	int OBSERVATORY_TYPE_AGE = 1;
	int OBSERVATORY_TYPE_CCAA = 2;
	int OBSERVATORY_TYPE_EELL = 3;
	int OBSERVATORY_TYPE_PRENSA = 4;

	// Servicio básico de validación
	String PARAM_URL = "url";
	String PARAM_EMAIL = "correo";
	String PARAM_WIDTH = "amplitud";
	String PARAM_DEPTH = "profundidad";
	String PARAM_REPORT = "informe";
	String PARAM_USER = "usuario";
	String PARAM_CONTENT = "content";
	String PARAM_IN_DIRECTORY = "inDirectory";
	String EXECUTE = "execute";
	String REPORT_OBSERVATORY = "observatorio-1";
	String REPORT_OBSERVATORY_1_NOBROKEN = "observatorio-1-nobroken";
	String REPORT_OBSERVATORY_2 = "observatorio-2";
	String REPORT_OBSERVATORY_2_NOBROKEN = "observatorio-2-nobroken";
	String REPORT_OBSERVATORY_3 = "observatorio-3";
	String REPORT_OBSERVATORY_3_NOBROKEN = "observatorio-3-nobroken";
	String REPORT_UNE = "une";
	String REPORT_OBSERVATORY_FILE = "observatorio-inteco-1-0";
	String REPORT_UNE_FILE = "une-139803";
	String REPORT_WCAG_1_FILE = "wcag-1-0";
	String REPORT_WCAG_2_FILE = "wcag-2-0";
	String BASIC_SERVICE_STATUS_LAUNCHED = "launched";
	String BASIC_SERVICE_STATUS_QUEUED = "queued";
	String BASIC_SERVICE_STATUS_SCHEDULED = "scheduled";
	String BASIC_SERVICE_STATUS_MISSING_PARAMS = "missing_params";
	String BASIC_SERVICE_STATUS_FINISHED = "finished";
	String BASIC_SERVICE_STATUS_ERROR = "error";
	String BASIC_SERVICE_STATUS_RULED_OUT = "ruled_out";
	String BASIC_SERVICE_STATUS_NOT_CRAWLED = "not_crawled";
	String BASIC_SERVICE_STATUS_ERROR_SENDING_EMAIL = "error_sending_email";
	String BASIC_SERVICE_STATUS_HTTP_REQUEST_ERROR = "http_request_error";

	// HTML
	String REQUEST_TYPE = "type";
	String INTRODUCTION = "intr";
	String OBJECTIVE = "obj";
	String METHODOLOGY = "met";
	String METHODOLOGY_SUB1 = "metSub1";
	String METHODOLOGY_SUB2 = "metSub2";
	String METHODOLOGY_SUB3 = "metSub3";
	String METHODOLOGY_SUB4 = "metSub4";
	String GLOBAL_RESULTS = "glob";
	String GLOBAL_RESULTS2 = "glob2";
	String GLOBAL_RESULTS3 = "glob3";
	String GLOBAL_RESULTS4 = "glob4";
	String GLOBAL_RESULTS5 = "glob5";
	String GLOBAL_RESULTS6 = "glob6";
	String SEGMENT_RESULTS_1 = "seg1";
	String SEGMENT_RESULTS_2 = "seg2";
	String SEGMENT_RESULTS_3 = "seg3";
	String SEGMENT_RESULTS_4 = "seg4";
	String SEGMENT_RESULTS_5 = "seg5";
	String EVOLUTION_RESULTS = "evol";
	String EVOLUTION_RESULTS1 = "evol1";
	String EVOLUTION_RESULTS2 = "evol2";
	String EVOLUTION_RESULTS3 = "evol3";
	String EVOLUTION_RESULTS4 = "evol4";
	String CONCLUSION = "conc";
	String SEGMENT_CONCLUSION = "segConc";
	String EVOLUTION_CONCLUSION = "evConc";
	String INTRODUCTION_FILE = "index.html";
	String OBJECTIVE_FILE = "objective.html";
	String METHODOLOGY_FILE = "methodology.html";
	String METHODOLOGY_SUB1_FILE = "methodology1.html";
	String METHODOLOGY_SUB2_FILE = "methodology2.html";
	String METHODOLOGY_SUB3_FILE = "methodology3.html";
	String METHODOLOGY_SUB4_FILE = "methodology4.html";
	String GLOBAL_RESULTS_FILE = "global_result.html";
	String GLOBAL_RESULTS2_FILE = "global_result2.html";
	String GLOBAL_RESULTS3_FILE = "global_result3.html";
	String GLOBAL_RESULTS4_FILE = "global_result4.html";
	String GLOBAL_RESULTS5_FILE = "global_result5.html";
	String GLOBAL_RESULTS6_FILE = "global_result6.html";
	String SEGMENT_RESULTS_FILE_1 = "segment{0}_1.html";
	String SEGMENT_RESULTS_FILE_2 = "segment{0}_2.html";
	String SEGMENT_RESULTS_FILE_3 = "segment{0}_3.html";
	String SEGMENT_RESULTS_FILE_4 = "segment{0}_4.html";
	String SEGMENT_RESULTS_FILE_5 = "segment{0}_5.html";
	String EVOLUTION_RESULTS_FILE = "evolution_result.html";
	String EVOLUTION_RESULTS_FILE_1 = "evolution_result1.html";
	String EVOLUTION_RESULTS_FILE_2 = "evolution_result2.html";
	String EVOLUTION_RESULTS_FILE_3 = "evolution_result3.html";
	String EVOLUTION_RESULTS_FILE_4 = "evolution_result4.html";
	String CONCLUSION_FILE = "conclusion.html";
	String SEGMENT_CONCLUSION_FILE = "segmentConclusion.html";
	String EVOLUTION_CONCLUSION_FILE = "evolutionConclusion.html";
	String ZIP_FILE = "htmlZip.zip";
	String ZIP_PDF_FILE = "pdfZip.zip";
	String INDEX_FORWARD = "indexHTML";
	String GLOBAL_RESULTS_FORWARD = "globalResultHTML";
	String GLOBAL_RESULTS2_FORWARD = "globalResultHTML2";
	String GLOBAL_RESULTS3_FORWARD = "globalResultHTML3";
	String GLOBAL_RESULTS4_FORWARD = "globalResultHTML4";
	String GLOBAL_RESULTS5_FORWARD = "globalResultHTML5";
	String GLOBAL_RESULTS6_FORWARD = "globalResultHTML6";
	String SEGMENT_RESULTS_FORWARD_1 = "segmentResultHTML1";
	String SEGMENT_RESULTS_FORWARD_2 = "segmentResultHTML2";
	String SEGMENT_RESULTS_FORWARD_3 = "segmentResultHTML3";
	String SEGMENT_RESULTS_FORWARD_4 = "segmentResultHTML4";
	String SEGMENT_RESULTS_FORWARD_5 = "segmentResultHTML5";
	String EVOLUTION_RESULTS_FORWARD = "evolutionResultHTML";
	String EVOLUTION_RESULTS_FORWARD1 = "evolutionResultHTML1";
	String EVOLUTION_RESULTS_FORWARD2 = "evolutionResultHTML2";
	String EVOLUTION_RESULTS_FORWARD3 = "evolutionResultHTML3";
	String EVOLUTION_RESULTS_FORWARD4 = "evolutionResultHTML4";
	String OBSERVATORY_NAME = "obsName";
	String OBSERVATORY_DATE = "obsDate";
	String OBSERVATORY_EVOLUTION = "obsEv";
	String OBSERVATORY_SEGMENTS = "obsSeg";
	String OBSERVATORY_T = "obsType";
	String HTML_MENU = "menu";
	String HTML_SUBMENU = "subMenu";
	String HTML_MENU_INTRODUCTION = "1";
	String HTML_MENU_OBJECTIVE = "2";
	String HTML_MENU_METHODOLOGY = "3";
	String HTML_SUBMENU_METHODOLOGY_1 = "3.1";
	String HTML_SUBMENU_METHODOLOGY_2 = "3.2";
	String HTML_SUBMENU_METHODOLOGY_3 = "3.3";
	String HTML_SUBMENU_METHODOLOGY_4 = "3.4";
	String HTML_MENU_GLOBAL_RESULTS = "4";
	String HTML_MENU_GLOBAL_RESULTS_1 = "4.1";
	String HTML_MENU_GLOBAL_RESULTS_2 = "4.2";
	String HTML_MENU_GLOBAL_RESULTS_3 = "4.3";
	String HTML_MENU_GLOBAL_RESULTS_4 = "4.4";
	String HTML_MENU_GLOBAL_RESULTS_5 = "4.5";
	String HTML_MENU_GLOBAL_RESULTS_6 = "4.6";
	String HTML_MENU_SEGMENT_RESULTS = "5";
	String HTML_MENU_SEGMENT_RESULTS_1 = "5.1";
	String HTML_MENU_SEGMENT_RESULTS_2 = "5.2";
	String HTML_MENU_SEGMENT_RESULTS_3 = "5.3";
	String HTML_MENU_SEGMENT_RESULTS_4 = "5.4";
	String HTML_MENU_SEGMENT_RESULTS_5 = "5.5";
	String HTML_MENU_EVOLUTION = "6";
	String HTML_MENU_EVOLUTION_RESULTS_1 = "6.1";
	String HTML_MENU_EVOLUTION_RESULTS_2 = "6.2";
	String HTML_MENU_EVOLUTION_RESULTS_3 = "6.3";
	String HTML_MENU_EVOLUTION_RESULTS_4 = "6.4";
	String HTML_MENU_CONCLUSION = "7";
	String HTML_SUBMENU_GLOBAL_CONCLUSION = "7.1";
	String HTML_SUBMENU_SEGMENT_CONCLUSION = "7.2";
	String HTML_SUBMENU_EVOLUTION_CONCLUSION = "7.3";

	String DEFAULT_ENCODING = "UTF-8";

	String EXPORT = "export";
	String CONFIRM = "confirm";

	String OBJECT_TYPE_PARAGRAPH = "paragraph";
	String OBJECT_TYPE_SECTION = "section";

	String WCAG_2 = "WCAG 2.0";
	String WCAG_1 = "WCAG 1.0";

	String OBSERVATORY_GRAPHIC_EVOLUTION_1_1_VERIFICATION = "1.1";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_2_VERIFICATION = "1.2";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_3_VERIFICATION = "1.3";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_4_VERIFICATION = "1.4";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_5_VERIFICATION = "1.5";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_6_VERIFICATION = "1.6";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_7_VERIFICATION = "1.7";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_8_VERIFICATION = "1.8";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_9_VERIFICATION = "1.9";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_10_VERIFICATION = "1.10";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_11_VERIFICATION = "1.11";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_12_VERIFICATION = "1.12";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_13_VERIFICATION = "1.13";
	String OBSERVATORY_GRAPHIC_EVOLUTION_1_14_VERIFICATION = "1.14";

	String OBSERVATORY_GRAPHIC_EVOLUTION_2_1_VERIFICATION = "2.1";
	String OBSERVATORY_GRAPHIC_EVOLUTION_2_2_VERIFICATION = "2.2";
	String OBSERVATORY_GRAPHIC_EVOLUTION_2_3_VERIFICATION = "2.3";
	String OBSERVATORY_GRAPHIC_EVOLUTION_2_4_VERIFICATION = "2.4";
	String OBSERVATORY_GRAPHIC_EVOLUTION_2_5_VERIFICATION = "2.5";
	String OBSERVATORY_GRAPHIC_EVOLUTION_2_6_VERIFICATION = "2.6";

	String NORMATIVA_UNE_2012 = "UNE-2012";
	String NORMATIVA_UNE_2012_B = "UNE-2012-B";
	String NORMATIVA_UNE_EN2019 = "UNE-EN2019";

	String MESSAGE_RESOURCES_2012_B = "ApplicationResources-2012-b";

	String MESSAGE_RESOURCES_UNE_EN2019 = "ApplicationResources-UNEEN2019";
}


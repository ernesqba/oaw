<!--
Copyright (C) 2017 MINHAFP, Ministerio de Hacienda y Función Pública, 
This program is licensed and may be used, modified and redistributed under the terms
of the European Public License (EUPL), either version 1.2 or (at your option) any later 
version as soon as they are approved by the European Commission.
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF 
ANY KIND, either express or implied. See the License for the specific language governing 
permissions and more details.
You should have received a copy of the EUPL1.2 license along with this program; if not, 
you may find it at http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32017D0863
-->
<%@ include file="/common/taglibs.jsp"%>
<%@page import="es.inteco.common.Constants"%>
<html:xhtml />
<html:javascript formName="RangeForm" />
<!--  JQ GRID   -->
<link rel="stylesheet" href="/oaw/js/jqgrid/css/ui.jqgrid.css">
<link rel="stylesheet" href="/oaw/css/jqgrid.semillas.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/oaw/js/jqgrid/jquery.jqgrid.src.js"></script>
<script>
	var script = document.createElement('script');
	var lang = (navigator.language || navigator.browserLanguage)
	script.src = '/oaw/js/jqgrid/i18n/grid.locale-'+lang.substring(0,2)+'.js';
	document.head.appendChild(script);
</script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript">

var $jn = jQuery.noConflict();
var paginadorTotal = '<bean:message key="cargar.semilla.observatorio.buscar.total"/>';

var colNameId = '<bean:message key="colname.id"/>';
var colNameName = '<bean:message key="colname.name"/>';
var colNameMinValue = '<bean:message key="colname.min.value"/>';
var colNameMaxValue = '<bean:message key="colname.max.value"/>';
var colNameMinValueOperator = '<bean:message key="colname.min.value.operator"/>';
var colNameMaxValueOperator = '<bean:message key="colname.max.value.operator"/>';
var colNameWeight = '<bean:message key="colname.weight"/>';

var colNameColor = '<bean:message key="colname.color"/>'


var colNameRemove = '<bean:message key="colname.remove"/>';


var windowTitleRemove = '<bean:message key="range.observatory.modal.delete.title"/>';
var saveButton = '<bean:message key="boton.aceptar"/>';
var cancelButton = '<bean:message key="boton.cancelar"/>';
var confirmRemoveMessage = '<bean:message key="range.observatory.modal.delete.confirm"/>';

var lastUrl;
var scroll;

var gridSelRow;


function eliminarFormatter(cellvalue, options, rowObject) {
	return "<span style='cursor:pointer' onclick='deleteRange("
		+ options.rowId
		+ ")'class='glyphicon glyphicon-remove'></span><span class='sr-only'>" + colNameRemove + "</span></span>";
}

function deleteRange(rowId) {

	var range = $('#grid').jqGrid('getRowData', rowId);
	var id = range.id;
	var deleteDialog = $('<div id="deleteRangeDialogContent"></div>');

	deleteDialog.append('<p>' + confirmRemoveMessage + ' "' + range.name + '"?</p>');

	deleteDialog
		.dialog({
			autoOpen: false,
			minHeight: $(window).height() * 0.25,
			minWidth: $(window).width() * 0.25,
			modal: true,
			title: windowTitleRemove,
			buttons: {
				"Aceptar": {
					click: function() {
						$
							.ajax(
								{
									url: '/oaw/secure/RangeObservatorio.do?action=delete&id='
										+ id,
									method: 'POST',
									cache: false
								}).success(function(response) {
									reloadGrid(lastUrl);
									deleteDialog.dialog("close");
								});
					},
					text: saveButton,
					class: 'jdialog-btn-save'
				},
				"Cancelar": {
					click: function() {
						deleteDialog.dialog("close");
					},
					text: cancelButton,
					class: 'jdialog-btn-cancel'
				}
			}
		});

	deleteDialog.dialog("open");
}


$(window)
	.on(
		'load',
		function() {

			var $jq = $.noConflict();

			var lastUrl;

			// Primera carga del grid el grid
			$jq(document)
				.ready(
					function() {
						reloadGrid('/oaw/secure/RangeObservatorio.do?action=all');

					});

		});


// Recarga el grid. Recibe como parámetro la url de la acción con la información
// de paginación.
function reloadGrid(path) {

	lastUrl = path;

	// Mantener el scroll
	scroll = $(window).scrollTop();

	$('#grid').jqGrid('clearGridData')

	$
		.ajax({
			url: path,
			dataType: "json",
			cache: false
		})
		.done(

			function(data) {

				ajaxJson = JSON.stringify(data.ranges);

				total = data.paginador.total;

				$('#grid')
					.jqGrid(
						{
							editUrl: '/oaw/secure/RangeObservatorio.do?action=update',
							colNames: [colNameId, colNameWeight, colNameName, colNameMinValue, colNameMinValueOperator, "x",
								colNameMaxValueOperator, colNameMaxValue, colNameColor,
								colNameRemove],
							colModel: [
								{
									name: "id",
									hidden: true,
									sortable: false
								},
								{
									name: "weight",
									width: 15,
									sortable: true,
									editrules: {
										number: true,
									},
									align: "center",
									formatter: cellFormatter,
								},
								{
									name: "name",
									width: 50,
									editrules: {
										required: true
									},

									align: "center",
									sortable: true

								},
								{
									name: "minValue",
									width: 20,
									editrules: {
										number: true,
									},
									align: "center",
									formatter: cellFormatter,
									sortable: true

								},
								{
									name: "minValueOperator",
									width: 20,
									edittype : "select",
									editoptions : {
										value: ":;<:<;<=:<="
									},
									align: "center",
									sortable: false

								},
								 {
									name:'x',
									width: 5,
									editable:'false',
									formatter: xFormatter,
									
								 },

								{
									name: "maxValueOperator",
									width: 20,
									align: "center",
									edittype : "select",
									formatter: cellFormatter,
									editoptions : {
										value: ":;<:<;<=:<="
									},
									sortable: false

								},								{
									name: "maxValue",
									width: 20,
									editrules: {
										number: true,
									},
									formatter: cellFormatter,
									align: "center",
									sortable: true,

								},
								{
									name: "color",
									width: 20,
									editrules: {
										required: true
									},
									edittype : 'custom',
									sortable : false,
									editoptions : {
										custom_element : colorEdit,
										custom_value : colorEditValue
									},
									formatter: colorFormatter,
									unformat: colorUnformat,
									align: "center",

								},
								{
									name: "eliminar",
									width: 20,
									sortable: false,
									editable: false,
									formatter: eliminarFormatter,
								}

							],
							inlineEditing: {
								keys: true,
								defaultFocusField: "name"
							},
							cmTemplate: {
								autoResizable: true,
								editable: true
							},
							viewrecords: false,
							autowidth: true,
							pgbuttons: false,
							pgtext: false,
							pginput: false,
							hidegrid: false,
							altRows: true,
							mtype: 'POST',

							onSelectRow: function(rowid,
								status, e) {

								var $self = $(this), savedRow = $self
									.jqGrid(
										"getGridParam",
										"savedRow");
								if (savedRow.length > 0
									&& savedRow[0].id !== rowid) {
									$self.jqGrid(
										"restoreRow",
										savedRow[0].id);
								}

								$self
									.jqGrid(
										"editRow",
										rowid,
										{
											focusField: e.target,
											keys: true,
											url: '/oaw/secure/RangeObservatorio.do?action=update',
											restoreAfterError: false,
											successfunc: function(
												response) {
												reloadGrid(lastUrl);
											},
											afterrestorefunc: function(
												response) {
												reloadGrid(lastUrl);
											}

										});

							},
							beforeSelectRow: function(
								rowid, e) {
								var $self = $(this), i, $td = $(
									e.target).closest(
										"td"), iCol = $.jgrid
											.getCellIndex($td[0]);

								// En la columna
								// eliminar desactivamos la
								// selección para evitar que se
								// active la edidion
								if (this.p.colModel[iCol].name === "eliminar") {
									return false;
								}

								savedRows = $self.jqGrid(
									"getGridParam",
									"savedRow");
								for (i = 0; i < savedRows.length; i++) {
									if (savedRows[i].id !== rowid) {
										// save currently
										// editing row
										$self
											.jqGrid(
												'saveRow',
												savedRows[i].id,
												{
													successfunc: function(
														response) {
														reloadGrid(lastUrl);
													},
													afterrestorefunc: function(
														response) {
														reloadGrid(lastUrl);
													},
													url: '/oaw/secure/RangeObservatorio.do?action=update',
													restoreAfterError: false,
												});

									}
								}
								return savedRows.length === 0;
							},
							gridComplete: function() {
								// Restaurar el scroll
								$(window).scrollTop(scroll);
							}
						}).jqGrid("inlineNav");

				// Recargar el grid
				$('#grid').jqGrid('setGridParam', {
					data: JSON.parse(ajaxJson)
				}).trigger('reloadGrid');

				$('#grid').unbind("contextmenu");

				// Mostrar sin resultados
				if (total == 0) {
					$('#grid')
						.append(
							'<tr role="row" class="ui-widget-content jqgfirstrow ui-row-ltr"><td colspan="9" style="padding: 15px !important;" role="gridcell">Sin resultados</td></tr>');
				}

				// Paginador
				paginas = data.paginas;

				$('#paginador').empty();

				$('#paginador').append("<span style='float: left;clear: both; display: block; width: 100%; text-align: left;padding: 10px 5px;'><strong>" + paginadorTotal + "</strong> " + data.paginador.total + "</span>");

				// Si solo hay una página no pintamos el paginador
				if (paginas.length > 1) {

					$
						.each(
							paginas,
							function(key, value) {
								if (value.active == true) {
									$('#paginador')
										.append(
											'<a href="javascript:reloadGrid(\''
											+ value.path
											+ '\')" class="'
											+ value.styleClass
											+ ' btn btn-default">'
											+ value.title
											+ '</a>');
								} else {
									$('#paginador')
										.append(
											'<span class="' + value.styleClass
											+ ' btn">'
											+ value.title
											+ '</span>');
								}

							});
				}
			}).error(function(data) {
				console.log("Error")
				console.log(data)
			});

}


function colorEdit(value, options) {
	var element = document.createElement('input');
	element.setAttribute("name", "color");
	element.setAttribute("id", "color");
	element.setAttribute("type", "color");
	element.setAttribute("value", value);
	return element;
}

function colorEditValue(elem, operation, value) {
	if (operation === 'get') {
		return $(elem).val();
	} else if (operation === 'set') {
		$('input', elem).val(value);
	}
}

function colorUnformat(cellvalue, options, cell){
	return $('#grid').jqGrid('getLocalRow', options.rowId).color;
}

var dialog;

var windowWidth = $(window).width() * 0.4;
var windowHeight = $(window).height() * 0.5;


function dialogNewRange() {

	window.scrollTo(0, 0);

	$('#successMD').hide();
	$('#errorMD').hide();

	
	var windowTitle = '<bean:message key="nueva.range.observatorio.modal.title"/>';
	
	var saveButton = '<bean:message key="boton.guardar"/>';
	
	var cancelButton = '<bean:message key="boton.cancelar"/>';
	
	
	
	dialog = $("#dialogNewRange").dialog({
		height : windowHeight,
		width : windowWidth,
		modal : true,
		title : windowTitle,
		buttons : {
			"Guardar" : {
				click: function() {
					saveNewRange();
				},
				text : saveButton,
				class: 'jdialog-btn-save'
			},
			"Cancelar" : {
				click: function() {
					dialog.dialog("close");
				},
				text: cancelButton,
				class: 'jdialog-btn-cancel'
			}
		},
		open : function() {
		},
		close : function() {
			$('#newRangeForm')[0].reset();
		}
	});
}

function saveNewRange() {
	$('#successMD').hide();
	$('#successMD').html("");
	$('#errorMD').hide();
	$('#errorMD').html("");

	var guardado = $.ajax({
		url : '/oaw/secure/RangeObservatorio.do?action=save',
		data : $('#newRangeForm').serialize(),
		method : 'POST',
		cache : false
	}).success(
			function(response) {
				$('#successMD').addClass('alert alert-success');
				$('#successMD').append("<ul>");

				$.each(JSON.parse(response), function(index, value) {
					$('#successMD').append(
							'<li>' + value.message + '</li>');
				});

				$('#successMD').append("</ul>");
				$('#successMD').show();
				dialog.dialog("close");
				reloadGrid(lastUrl);

			}).error(
			function(response) {
				$('#errorMD').addClass('alert alert-danger');
				$('#errorMD').append("<ul>");

				$.each(JSON.parse(response.responseText), function(index,
						value) {
					$('#errorMD').append(
							'<li>' + value.message + '</li>');
				});

				$('#errorMD').append("</ul>");
				$('#errorMD').show();

			}

	);

	return guardado;
	
}



function xFormatter(cellvalue, options, rowObject) {
		return "X";
}

function cellFormatter(cellvalue, options, rowObject) {
	if(cellvalue){
		return cellvalue;
	} else {
		return "";
	}
}


function colorFormatter(cellvalue, options, rowObject) {
	if(cellvalue){
		return "<div style='background-color:"+cellvalue+";width:100%;height:100%'/>";
	} else {
		return "";
	}
}

</script>
<!-- observatorio_cargarRanges.jsp -->
<div id="main">
	<div id="dialogNewRange" style="display: none">
		<div id="main" style="overflow: hidden">
			<div id="errorMD" style="display: none"></div>
			<div>
				<p class="alert alert-info">
					<span class="glyphicon glyphicon-info-sign"></span>
					<em>
						<bean:message key="nueva.semilla.webs.informacion" />
					</em>
					:
					<bean:message key="new.ranges.observatorio.info.modal" />
				</p>
			</div>
			<form id="newRangeForm">
				<!-- Nombre -->
				<div class="row formItem">
					<label for="name" class="control-label">
						<strong class="labelVisu">
							<acronym title="<bean:message key="campo.obligatorio" />"> * </acronym>
							<bean:message key="range.observatory.new.name" />
						</strong>
					</label>
					<div class="col-xs-6">
						<input type="text" id="name" name="name" class="textoLargo form-control" />
					</div>
				</div>
				<div class="row formItem">
					<label for="weight" class="control-label">
						<strong class="labelVisu">
							<acronym title="<bean:message key="campo.obligatorio" />"> * </acronym>
							<bean:message key="colname.weight" />
						</strong>
					</label>
					<div class="col-xs-2">
						<input type="number" id="weight" name="weight" class="form-control" step="1" min="1" />
					</div>
				</div>
				<div class="row formItem">
					<label for="minValue" class="control-label">
						<strong class="labelVisu">
							<acronym title="<bean:message key="campo.obligatorio" />"> * </acronym>
							<bean:message key="colname.range" />
						</strong>
					</label>
					<div class="col-xs-2">
						<input type="number" id="minValue" name="minValue" class="form-control" step="0.1" />
					</div>
					<div class="col-xs-2">
						<select id="minValueOperator" name="minValueOperator" class="form-control">
							<option value=""></option>
							<option value="&#60;">&#60;</option>
							<option value="&#60;&#61;">&#60;&#61;</option>
						</select>
					</div>
					<div class="col-xs-1">X</div>
					<div class="col-xs-2">
						<select id="maxValueOperator" name="maxValueOperator" class="form-control">
							<option value=""></option>
							<option value="&#60;">&#60;</option>
							<option value="&#60;&#61;">&#60;&#61;</option>
						</select>
					</div>
					<div class="col-xs-2">
						<input type="number" id="maxValue" name="maxValue" class="form-control" step="0.1" />
					</div>
				</div>
				<div class="row formItem">
					<label for="color" class="control-label">
						<strong class="labelVisu">
							<acronym title="<bean:message key="campo.obligatorio" />"> * </acronym>
							<bean:message key="colname.color" />
						</strong>
					</label>
					<div class="col-xs-2">
						<input type="color" id="color" name="color" class="form-control" step="1" min="1" />
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="container_menu_izq">
		<jsp:include page="menu.jsp" />
	</div>
	<div id="container_der">
		<div id="migas">
			<p class="sr-only">
				<bean:message key="ubicacion.usuario" />
			</p>
			<ol class="breadcrumb">
				<li>
					<html:link forward="observatoryMenu">
						<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						<bean:message key="migas.observatorio" />
					</html:link>
				</li>
				<li class="active">
					<bean:message key="migas.ranges.observatorio" />
				</li>
			</ol>
		</div>
		<div id="cajaformularios">
			<h2>
				<bean:message key="gestion.ranges.observatorio.titulo" />
			</h2>
			<div id="successMD" style="display: none"></div>
			<div>
				<p class="alert alert-info">
					<span class="glyphicon glyphicon-info-sign"></span>
					<em>
						<bean:message key="nueva.semilla.webs.informacion" />
					</em>
					:
					<bean:message key="new.ranges.observatorio.info" />
				</p>
			</div>
			<p class="pull-right">
				<a href="#" class="btn btn-default btn-lg" onclick="dialogNewRange()">
					<span class="glyphicon glyphicon-plus" aria-hidden="true" data-toggle="tooltip" title=""
						data-original-title="Crear una range"></span>
					<bean:message key="new.ranges.observatorio" />
				</a>
			</p>
			<!-- Grid -->
			<table id="grid">
			</table>
			<p id="paginador"></p>
		</div>
		<p id="pCenter">
			<html:link forward="observatoryMenu" styleClass="btn btn-default btn-lg">
				<bean:message key="boton.volver" />
			</html:link>
		</p>
	</div>
	<!-- fin cajaformularios -->
</div>

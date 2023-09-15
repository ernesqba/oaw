<!--
Copyright (C) 2012 INTECO, Instituto Nacional de Tecnologías de la Comunicación, 
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
<html:javascript formName="TemplateRangeForm" />
<bean:parameter name="<%=Constants.ID_OBSERVATORIO%>" id="idObservatorio" />
<link rel="stylesheet" href="/oaw/js/tagbox/tagbox.css">
<link rel="stylesheet" href="/oaw/js/jqgrid/css/ui.jqgrid.css">
<link rel="stylesheet" href="/oaw/css/jqgrid.semillas.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	var yes = '<bean:message key="select.yes" />';
	var no = '<bean:message key="select.no" />';

	$(document)
			.ready(
					function() {
						var $jn = jQuery.noConflict();

						$(".uraNameFilter")
								.on(
										"keyup",
										function() {
											var value = $(this).val()
													.toLowerCase();
											('.uraNameColumn')

											$(this)
													.closest('.summaryEntry')
													.find(
															'.sendResultsDetailTable')
													.find('.uraNameColumn')
													.filter(
															function() {
																$(this)
																		.closest(
																				'tr')
																		.toggle(
																				$(
																						this)
																						.text()
																						.toLowerCase()
																						.indexOf(
																								value) > -1)
															});
										});

						$(".errorFilter")
								.on(
										"change",
										function() {
											var checked = $(this).prop(
													'checked');
											if (checked) {
												$(this)
														.closest(
																'.summaryEntry')
														.find(
																'.sendResultsDetailTable')
														.find('.errorColumn')
														.filter(
																function() {
																	$(this)
																			.closest(
																					'tr')
																			.toggle(
																					$(
																							this)
																							.text()
																							.trim().length > 0)
																});
											} else {
												$(this)
														.closest(
																'.summaryEntry')
														.find(
																'.sendResultsDetailTable')
														.find('.errorColumn')
														.filter(
																function() {
																	$(this)
																			.closest(
																					'tr')
																			.show()
																});
											}
										});

						
						
						$(".sendAutoFilter")
						.on(
								"change",
								function() {
									var selected = $(this).find(":selected").text();
									if (selected != "") {

										$(this)
												.closest(
														'.summaryEntry')
												.find(
														'.sendResultsDetailTable')
												.find('.sendAutoColumn')
												.filter(
														function() {
															$(this)
																	.closest(
																			'tr')
																	.toggle(
																			$(
																					this)
																					.text()
																					.trim() == selected)
														});
									} else {
										$(this)
												.closest(
														'.summaryEntry')
												.find(
														'.sendResultsDetailTable')
												.find('.sendAutoColumn')
												.filter(
														function() {
															$(this)
																	.closest(
																			'tr')
																	.show()
														});
									}
								});
						
// 						$(".sendAutoFilter")
// 								.on(
// 										"change",
// 										function() {
// 											var checked = $(this).prop(
// 													'checked');
// 											if (checked) {

// 												$(this)
// 														.closest(
// 																'.summaryEntry')
// 														.find(
// 																'.sendResultsDetailTable')
// 														.find('.sendAutoColumn')
// 														.filter(
// 																function() {
// 																	$(this)
// 																			.closest(
// 																					'tr')
// 																			.toggle(
// 																					$(
// 																							this)
// 																							.text()
// 																							.trim() == yes)
// 																});
// 											} else {
// 												$(this)
// 														.closest(
// 																'.summaryEntry')
// 														.find(
// 																'.sendResultsDetailTable')
// 														.find('.sendAutoColumn')
// 														.filter(
// 																function() {
// 																	$(this)
// 																			.closest(
// 																					'tr')
// 																			.show()
// 																});
// 											}
// 										});
						
					});
	function showOnDialog(mail) {
		var previewDialog = $('<div id="previewDialog"></div>');
		previewDialog.append($('#' + mail).text());

		previewDialog.dialog({
			autoOpen : false,
			minHeight : $(window).height() * 0.5,
			minWidth : $(window).width() * 0.5,
			modal : true,
			title : "",
		});
		previewDialog.dialog("open");
	}

	function showDialog(dialogId, title) {
		var previewDialog = $('#' + dialogId);

		previewDialog.dialog({
			autoOpen : false,
			minHeight : $(window).height() * 0.5,
			minWidth : $(window).width() * 0.5,
			modal : true,
			title : title,
		});
		previewDialog.dialog("open");
	}
</script>
<div id="main">
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
				<li>
					<html:link forward="resultadosPrimariosObservatorio" paramName="idObservatorio"
						paramId="<%=Constants.ID_OBSERVATORIO%>">
						<bean:message key="migas.indice.observatorios.realizados.lista" />
					</html:link>
				</li>
				<li class="active">
					<bean:message key="migas.exportar" />
				</li>
			</ol>
		</div>
		<div id="cajaformularios">
			<h2>
				<bean:message key="send.results.observatory.title.results" />
			</h2>
			<logic:empty name="results">
				<p>
					<bean:message key="send.results.observatory.title.results.none" />
				</p>
			</logic:empty>
			<logic:notEmpty name="results">
				<bean:size id="numberResults" name="results" />
				<p>
					<bean:message key="send.results.observatory.title.results.number" arg0="<%=String.valueOf(numberResults)%>" />
				</p>
				<logic:iterate name="results" id="result" indexId="index">
					<div class="sendResultIteration">
						<h3>
							#
							<c:out value="${index + 1}" />
							(
							<fmt:formatDate value="${result.sendDate}" pattern="dd-MM-yyyy" />
							)
						</h3>
						<h3>
							<bean:message key="send.results.observatory.title.results.config" />
						</h3>
						<div class="summaryEntry">
							<ul>
								<li>
									<!-- comparision -->
									<b>
										<bean:message key="report.config.etiquetas.filter.title" />
										:
									</b>
									<logic:notEmpty name="result" property="comparisions">
										<logic:iterate name="result" property="comparisions" id="comp">
											<span>
												<bean:write name="comp" property="tagName" />
												(
												<bean:message key="confirmacion.exportar.resultados.observatorio.recurrencia.anterior" />
												:
												<bean:write name="comp" property="previous" />
												)
											</span>
										</logic:iterate>
									</logic:notEmpty>
									<logic:empty name="result" property="comparisions">
										<bean:message key="send.results.observatory.title.results.no.filter" />
									</logic:empty>
								</li>
								<li>
									<!-- executions -->
									<b>
										<bean:message key="report.config.observatorios.filter.title" />
										:
									</b>
									<logic:notEmpty name="result" property="observatories">
										<logic:iterate name="result" property="observatories" id="obs">
											<span>
												<bean:write name="obs" property="fechaStr" />
												,
											</span>
										</logic:iterate>
									</logic:notEmpty>
								</li>
								<li>
									<b>
										<bean:message key="resultado.observatorio.rastreo.realizado.send.subject" />
										:
									</b>
									<bean:write name="result" property="subject" />
								</li>
								<li>
									<b>
										<bean:message key="resultado.observatorio.rastreo.realizado.send.carbon.copy" />
										:
									</b>
									<bean:write name="result" property="cco" />
								</li>
							</ul>
						</div>
						<!-- ranges -->
						<div class="summaryEntry">
							<h3>
								<bean:message key="report.config.observatorios.templates.title" />
								<span style="cursor: pointer"
									onclick="showDialog('rangeSummary_<c:out value="${result.id}" />','<bean:message key="report.config.observatorios.templates.title" />')"
									class="glyphicon glyphicon-new-window"></span>
							</h3>
							<div id="rangeSummary_<c:out value="${result.id}" />" class="summaryModalTable" style="display: none">
								<table class="table table-stripped table-bordered table-hover">
									<tr>
										<th>
											<bean:message key="colname.name" />
										</th>
										<th>
											<bean:message key="colname.min.value" />
										</th>
										<th>
											<bean:message key="colname.min.value.operator" />
										</th>
										<th>x</th>
										<th>
											<bean:message key="colname.max.value.operator" />
										</th>
										<th>
											<bean:message key="colname.max.value" />
										</th>
										<th>
											<bean:message key="colname.template" />
										</th>
									</tr>
									<logic:empty name="result" property="results">
										<tr>
											<td colspan="7">
												<bean:message key="no.results" />
											</td>
										</tr>
									</logic:empty>
									<logic:notEmpty name="result" property="ranges">
										<logic:iterate name="result" property="ranges" id="range">
											<tr>
												<td>
													<bean:write name="range" property="name" />
												</td>
												<td>
													<bean:write name="range" property="minValue" />
												</td>
												<td>
													<bean:write name="range" property="minValueOperator" />
												</td>
												<td>x</td>
												<td>
													<bean:write name="range" property="maxValueOperator" />
												</td>
												<td>
													<bean:write name="range" property="maxValue" />
												</td>
												<td>
													<logic:notEmpty name="range" property="template">
														<span style="cursor: pointer"
															onclick="showOnDialog('previewTemplate_<c:out value="${range.id}" />_<c:out value="${result.id}" />')"
															class="glyphicon glyphicon-eye-open"></span>
														<span class='sr-only'>Preview email</span>
														</span>
														<span id="previewTemplate_<c:out value="${range.id}" />_<c:out value="${result.id}" />"
															style="display: none">
															<bean:write name="range" property="template" />
														</span>
													</logic:notEmpty>
												</td>
											</tr>
										</logic:iterate>
									</logic:notEmpty>
								</table>
							</div>
						</div>
						<!-- custom texts -->
						<div class="summaryEntry">
							<h3>
								<bean:message key="send.results.observatory.custom.title" />
								<span style="cursor: pointer"
									onclick="showDialog('customTextsSummary_<c:out value="${result.id}" />','<bean:message key="send.results.observatory.custom.title" />')"
									class="glyphicon glyphicon-new-window"></span>
							</h3>
							<span class='sr-only'>Preview email</span>
							<div id="customTextsSummary_<c:out value="${result.id}" />" class="summaryModalTable" style="display: none">
								<table class="table table-stripped table-bordered table-hover">
									<tr>
										<th>
											<bean:message key="colname.name" />
										</th>
										<th>
											<bean:message key="colname.range" />
										</th>
										<th>
											<bean:message key="colname.custom.message" />
										</th>
									</tr>
									<logic:empty name="result" property="results">
										<tr>
											<td colspan="7">
												<bean:message key="no.results" />
											</td>
										</tr>
									</logic:empty>
									<logic:notEmpty name="result" property="results">
										<logic:iterate name="result" property="results" id="resultT">
											<tr>
												<td>
													<bean:write name="resultT" property="uraName" />
												</td>
												<td>
													<bean:write name="resultT" property="rangeName" />
												</td>
												<td>
													<logic:notEmpty name="resultT" property="template">
														<span style="cursor: pointer"
															onclick="showOnDialog('previewCustomText_<c:out value="${resultT.id}" />_<c:out value="${result.id}" />')"
															class="glyphicon glyphicon-eye-open"></span>
														<span class='sr-only'>Preview email</span>
														</span>
														<span id="previewCustomText_<c:out value="${resultT.id}" />_<c:out value="${result.id}" />"
															style="display: none">
															<bean:write name="resultT" property="template" />
														</span>
													</logic:notEmpty>
												</td>
											</tr>
										</logic:iterate>
									</logic:notEmpty>
								</table>
							</div>
						</div>
						<!-- summary -->
						<div class="summaryEntry">
							<h3>
								<bean:message key="send.results.observatory.summary.title" />
							</h3>
							<bean:size id="resultsSize" name="result" property="results" />
							<bean:size id="sendedSize" name="result" property="sended" />
							<bean:define id="sendedSizeV">
								<bean:write name="sendedSize" />
							</bean:define>
							<bean:define id="resultsSizeV">
								<bean:write name='resultsSize' />
							</bean:define>
							<p>
								<bean:message key="send.results.observatory.summary.text" arg0="<%=sendedSizeV%>" arg1="<%=sendedSizeV%>" />
							</p>
							<p>
								<bean:message key="send.results.observatory.summary.send.manual" />
							</p>
							<logic:empty name="result" property="notAuto">
								<bean:message key="no.results" />
							</logic:empty>
							<logic:notEmpty name="result" property="notAuto">
								<ul>
									<logic:iterate name="result" property="notAuto" id="notA">
										<li>
											<bean:write name="notA" property="uraName" />
										</li>
									</logic:iterate>
								</ul>
							</logic:notEmpty>
						</div>
						<!-- nas -->
						<div class="summaryEntry">
							<h3>
								<bean:message key="send.results.observatory.summary.send.nas.title" />
							</h3>
							<bean:size id="resultsSize" name="result" property="results" />
							<bean:size id="sendedSize" name="result" property="sended" />
							<bean:define id="sendedSizeV">
								<bean:write name="sendedSize" />
							</bean:define>
							<bean:define id="resultsSizeV">
								<bean:write name='resultsSize' />
							</bean:define>
							<bean:define id="expirationDateFound" value=""></bean:define>
							<logic:iterate name="result" property="results" id="resultX">
								<logic:notEmpty name="resultX" property="validDate">
									<bean:define id="expirationDate">
										<fmt:formatDate value="${resultX.validDate}" pattern="dd-MM-yyyy" />
									</bean:define>
									<c:if test="${expirationDateFound != 'X' }">
										<bean:define id="expirationDateFound" value="X"></bean:define>
										<p>
											<bean:message key="send.results.observatory.summary.send.nas.text" arg0="<%=resultsSizeV%>"
												arg1="<%=resultsSizeV%>" arg2="<%=expirationDate%>" />
										</p>
									</c:if>
								</logic:notEmpty>
							</logic:iterate>
						</div>
						<!-- detail -->
						<div class="summaryEntry">
							<h3>
								<bean:message key="send.results.observatory.list" />
							</h3>
							<label for="uraNameFilter_<c:out value="${result.id}" />" class="control-label">
								<strong class="labelVisu">
									<bean:message key="colname.name" />
								</strong>
							</label>
							<input id="uraNameFilter_<c:out value="${result.id}" />" type="text" class="uraNameFilter">
							<label for="errorFilter_<c:out value="${result.id}" />" class="control-label" style="margin-left: 15px;">
								<strong class="labelVisu">
									<bean:message key="colname.error" />
								</strong>
							</label>
							<input id="errorFilter_<c:out value="${result.id}" />" type="checkbox" class="errorFilter">
							<label for="sendAutoFilter_<c:out value="${result.id}" />" class="control-label" style="margin-left: 15px;">
								<strong class="labelVisu">
									<bean:message key="colname.send.auto" />
								</strong>
							</label>
							<%-- 							<input id="sendAutoFilter_<c:out value="${result.id}" />" type="checkbox" class="sendAutoFilter"> --%>
							<select id="sendAutoFilter_<c:out value="${result.id}" />" class="sendAutoFilter">
								<option value=""></option>
								<option value="true"><bean:message key="select.yes" /></option>
								<option value="false"><bean:message key="select.no" /></option>
							</select>
							<table id="sendResultsDetailTable_<c:out value="${result.id}" />"
								class="table table-stripped table-bordered table-hover sendResultsDetailTable">
								<tr>
									<th>
										<bean:message key="colname.name" />
									</th>
									<th>
										<bean:message key="colname.email" />
									</th>
									<th>
										<bean:message key="colname.range" />
									</th>
									<th>
										<bean:message key="colname.range.score" />
									</th>
									<th>
										<bean:message key="colname.email.content" />
									</th>
									<th>
										<bean:message key="colname.send.auto" />
									</th>
									<th>
										<bean:message key="colname.sended" />
									</th>
									<th>
										<bean:message key="colname.date" />
									</th>
									<th>
										<bean:message key="colname.error" />
									</th>
									<th>
										<bean:message key="colname.file" />
									</th>
									<th>
										<bean:message key="colname.password" />
									</th>
								</tr>
								<logic:empty name="result" property="results">
									<tr>
										<td colspan="11">
											<bean:message key="no.results" />
										</td>
									</tr>
								</logic:empty>
								<logic:notEmpty name="result" property="results">
									<logic:iterate name="result" property="results" id="uraSend">
										<tr>
											<td class="uraNameColumn">
												<bean:write name="uraSend" property="uraName" />
											</td>
											<td>
												<bean:write name="uraSend" property="ura.emails" />
											</td>
											<td>
												<bean:write name="uraSend" property="rangeName" />
											</td>
											<td>
												<bean:write name="uraSend" property="rangeValue" />
											</td>
											<td>
												<logic:equal name="uraSend" property="send" value="true">
													<logic:notEmpty name="uraSend" property="mail">
														<span style="cursor: pointer" onclick="showOnDialog('previewEmail_<c:out value="${uraSend.id}" />')"
															class="glyphicon glyphicon-eye-open"></span>
														<span class='sr-only'>Preview email</span>
														</span>
														<span id="previewEmail_<c:out value="${uraSend.id}" />" style="display: none">
															<bean:write name="uraSend" property="mail" />
														</span>
													</logic:notEmpty>
												</logic:equal>
											</td>
											<td class="sendAutoColumn">
												<logic:equal name="uraSend" property="ura.sendAuto" value="true">
													<bean:message key="select.yes" />
												</logic:equal>
												<logic:notEqual name="uraSend" property="ura.sendAuto" value="true">
													<bean:message key="select.no" />
												</logic:notEqual>
											</td>
											<td>
												<logic:equal name="uraSend" property="send" value="true">
													<bean:message key="select.yes" />
												</logic:equal>
												<logic:notEqual name="uraSend" property="send" value="true">
													<bean:message key="select.no" />
												</logic:notEqual>
											</td>
											<td>
												<fmt:formatDate value="${uraSend.sendDate}" pattern="dd-MM-yyyy HH:mm" />
											</td>
											<td class="errorColumn">
												<logic:notEmpty name="uraSend" property="sendError">
													<bean:write name="uraSend" property="sendError" />
												</logic:notEmpty>
											</td>
											<td>
												<logic:notEmpty name="uraSend" property="fileLink">
													<a href='<bean:write name="uraSend" property="fileLink" />'>
														<span class="glyphicon glyphicon-file"></span>
													</a>
												</logic:notEmpty>
											</td>
											<td>
												<bean:write name="uraSend" property="filePass" />
											</td>
										</tr>
									</logic:iterate>
								</logic:notEmpty>
							</table>
						</div>
					</div>
				</logic:iterate>
		</div>
		</logic:notEmpty>
		<p id="pCenter">
			<html:link styleClass="btn btn-default btn-lg" forward="observatoryMenu">
				<bean:message key="boton.volver" />
			</html:link>
		</p>
	</div>
	<!-- fin cajaformularios -->
</div>
</div>
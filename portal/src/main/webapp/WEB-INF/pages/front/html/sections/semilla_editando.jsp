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
<%@ include file="/common/taglibs.jsp" %> 
<%@page import="es.inteco.common.Constants"%>
<html:xhtml/>
<inteco:sesion action="ifConfigAdmin">
	<div id="migas">
		<p class="oculto"><bean:message key="ubicacion.usuario" /> </p>
		<p>
			<html:link forward="indexAdmin"><bean:message key="migas.inicio" /></html:link> /
			<bean:message key="migas.semillas" /> / 
			<html:link forward="listSeedsMenu"><bean:message key="migas.rastreo.listado.editar.semilla" /></html:link>
			/<bean:message key="migas.rastreo.editar.semilla" />
		</p>
	</div>



			<div id="main">

					
					<div id="container_menu_izq">
						<jsp:include page="menu.jsp"/>
					</div>
					
					<div id="container_der">
						<div id="cajaformularios">
							<html:form styleClass="formulario" method="post" action="/secure/EditandoSemilla.do" onsubmit="return validateSemillaForm(this)" >
								<input type="hidden" name="<%= Constants.SEGUNDA %>" value="yes"/>
								<bean:parameter id="idSem" name="<%=Constants.SEMILLA %>"/>
								<input type="hidden" name="<%= Constants.SEMILLA %>" value="<%= idSem %>"/>
								<fieldset>
									<jsp:include page="/common/crawler_messages.jsp" />
									<legend> <bean:message key="nueva.semilla.webs.introduccion.url"/> </legend>
									<div class="formItem">
										<label for="nombre"><strong class="labelVisu"><acronym title="<bean:message key="campo.obligatorio" />"> * </acronym><bean:message key="editar.semilla.nombre" /></strong></label>
										<html:text styleId="nombre" styleClass="texto" name="SemillaForm" property="nombre" />
									</div>
									<div class="formItem">
										<p class="observ"><em><bean:message key="nueva.semilla.webs.informacion"/> </em>: <bean:message key="nueva.semilla.webs.info" /></p>
										<p><label for="listaUrlsString"><strong class="labelVisu"><acronym title="<bean:message key="campo.obligatorio" />"> * </acronym><bean:message key="editar.semilla.lista.url"/></strong></label></p>
										<html:textarea styleId="listaUrlsString" name="SemillaForm" property="listaUrlsString" rows="5" cols="50"/>	
									</div>
									<div class="formButton">
										<html:hidden property="<%= Constants.BOTON_SEMILLA_WEB %>" value="boton"/>
										<html:submit><bean:message key="boton.aceptar"/></html:submit>
										<html:cancel><bean:message key="boton.volver"/></html:cancel>
									</div>
								</fieldset>	
							</html:form>
						</div><!-- fin cajaformularios -->
					</div>

			</div>
		</div>
	</div> 	

</inteco:sesion>

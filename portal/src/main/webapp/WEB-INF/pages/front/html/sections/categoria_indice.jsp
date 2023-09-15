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
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Modificaciones: MINHAFP (Ministerio de Hacienda y Función Pública) 
Email: observ.accesibilidad@correo.gob.es
-->
<%@ include file="/common/taglibs.jsp" %>  
<%@page import="es.inteco.common.Constants"%>

<div id="migas">
	<p class="oculto"><bean:message key="ubicacion.usuario" /> </p> 
	<p><html:link forward="indexAdmin"><bean:message key="migas.inicio" /></html:link> / <bean:message key="migas.categorias" /></p>
</div>
	



			<div id="main">

				
					<div id="container_menu_izq">
						<jsp:include page="menu.jsp"/>
					</div>
					
					<div id="container_der">
						<div id="cajaformularios">
						
							<h2><bean:message key="indice.categorias.categorias" /></h2>
							
							<logic:notPresent name="<%=Constants.CARGAR_CATEGORIA_FORM %>">	
								<div class="notaInformativaExito">
									<p><bean:message key="indice.categorias.vacio"/></p>
									<p><html:link forward="newCategorie" styleClass="boton"><bean:message key="indice.categorias.nueva.categoria" /></html:link></p>
								</div>
							</logic:notPresent>
							<logic:present name="<%=Constants.CARGAR_CATEGORIA_FORM %>">
								<logic:empty name="<%=Constants.CARGAR_CATEGORIA_FORM %>" property="cats">	
									<div class="notaInformativaExito">
										<p><bean:message key="indice.categorias.vacio"/></p>
										<p><html:link forward="newCategorie" styleClass="boton"><bean:message key="indice.categorias.nueva.categoria" /></html:link></p>
									</div>
								</logic:empty>
								<logic:notEmpty name="<%=Constants.CARGAR_CATEGORIA_FORM %>" property="cats">	
									<p><html:link forward="newCategorie" styleClass="boton"><bean:message key="indice.categorias.nueva.categoria" /></html:link></p>
									<div class="pag">
										<table>
											<caption><bean:message key="indice.categorias.lista.categorias" /></caption>
											<tr>
												<th><bean:message key="indice.categorias.categoria" /></th>
												<th><bean:message key="indice.categorias.umbral" /></th>
												<th><bean:message key="indice.categorias.terminos" /></th>
												<th><bean:message key="indice.categorias.acciones" /></th>
											</tr>
											<logic:iterate name="CargarCategoriasForm" type="es.inteco.rastreador2.utils.Categoria" property="cats" id="elemento">
												<tr>
													<td><html:link forward="viewCategorie" paramId="<%= Constants.ID_CATEGORIA %>" paramName="elemento" paramProperty="id_categoria"><bean:write name="elemento" property="nombre" /></html:link></td>
													<td><bean:write name="elemento" property="umbral" /></td>
													<td><bean:write name="elemento" property="terminos" /></td>
													<td><ul class="lista_linea">
														<li><html:link forward="viewCategorie" paramId="<%= Constants.ID_CATEGORIA %>" paramName="elemento" paramProperty="id_categoria"><img src="../images/bt_ver.gif" alt="<bean:message key="indice.categorias.img.visualizar.alt" />"/></html:link></li>
														<li><html:link forward="editCategorie" paramId="<%= Constants.ID_CATEGORIA %>" paramName="elemento" paramProperty="id_categoria"><img src="../images/bt_modificar.gif" alt="<bean:message key="indice.categorias.img.editar.alt" />"/></html:link></li>
														<li><html:link forward="deleteCategorie" paramId="<%= Constants.ID_CATEGORIA %>" paramName="elemento" paramProperty="id_categoria"><img src="../images/bt_eliminar.gif" alt="<bean:message key="indice.categorias.img.eliminar.alt" />"/></html:link></li>
													</ul>
												</tr>
											</logic:iterate>
										</table>
										<jsp:include page="pagination.jsp" />
									</logic:notEmpty>
								</logic:present>
							</div>
							<p id="pCenter"><html:link forward="indexAdmin" styleClass="btn btn-default btn-lg"> <bean:message key="boton.volver"/> </html:link></p>
						</div><!-- fin cajaformularios -->
					</div>

			</div>
		</div>
	</div> 

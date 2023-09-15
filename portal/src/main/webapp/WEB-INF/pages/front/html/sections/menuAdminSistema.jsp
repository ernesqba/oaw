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
	<% request.getSession().removeAttribute(Constants.MENU); %>

	<bean:define id="rolAdmin"><inteco:properties key="role.administrator.id" file="crawler.properties" /></bean:define>
	<bean:define id="rolConfig"><inteco:properties key="role.configurator.id" file="crawler.properties" /></bean:define>
	<bean:define id="rolVisor"><inteco:properties key="role.visualizer.id" file="crawler.properties" /></bean:define>
	<bean:define id="rolCustResp"><inteco:properties key="role.customer.responsible.id" file="crawler.properties" /></bean:define>
	<bean:define id="rolCustUser"><inteco:properties key="role.customer.user.id" file="crawler.properties" /></bean:define>
	
<div id="migas">
	<span class="oculto"><bean:message key="ubicacion.usuario" /> </span> <bean:message key="migas.inicio" />
</div>


	<div id="cIzq">&nbsp;</div>

		<div id="main">

				<div id="container_menu_izq">
					<jsp:include page="menu.jsp"/>
				</div>
				<div id="container_der">
					<div class="textoinformativo">
						<h2><bean:message key="menuadmin.informacion" /></h2>
						<p>
							<bean:message key="welcome.common.message"/>
						</p>
						<div>
							<ul class="lista_inicial">
								<inteco:menu roles="<%=rolAdmin%>">
									<li><bean:message key="welcome.action.message.admin.users" /></li>
									<li><bean:message key="welcome.action.message.admin.cartridges" /></li>
									<li><bean:message key="welcome.action.message.admin.categories" /></li>
								</inteco:menu>
								<inteco:menu roles="<%=rolAdmin + \";\" + rolConfig%>">
									<li><bean:message key="welcome.action.message.admin.crawlings" /></li>
									<li><bean:message key="welcome.action.message.generate.seeds" /></li>
								</inteco:menu>
								<inteco:menu roles="<%=rolVisor + \";\" + rolCustResp + \";\" + rolCustUser%>">
									<li><bean:message key="welcome.action.message.see.crawlings" /></li>
								</inteco:menu>
								<inteco:menu roles="<%=rolCustResp%>">
									<li><bean:message key="welcome.action.message.access.account.data" /></li>
								</inteco:menu>
									<li><bean:message key="welcome.action.message.change.password" /></li>
							</ul>
						</div>
					</div>
				</div>

		</div> 
	</div>
</div>

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

<div id="content">
	<jsp:include page="observatory_anonymous_html_menu.jsp"/>
	<bean:define id="observatoryType" name="<%= Constants.OBSERVATORY_T %>" type="java.lang.String"/>
	

		<jsp:include page="observatory_anonymous_html_breadCoumbs.jsp" />
		
		<h1><bean:message key="ob.resAnon.intav.report.aspect.level1.title" /></h1>
		
		<p><bean:message key="ob.resAnon.intav.report.Ev25.p1" /></p>
		
		<h2><bean:message key="ob.resAnon.intav.report.chapterEv25.title" /></h2>
		
		<bean:define id="rutaImg">./img/graficas/<bean:message key="observatory.graphic.evolution.aspect.mid.puntuation.name" arg0="<%= Constants.OBSERVATORY_GRAPHIC_ASPECT_GENERAL_ID %>"/>.jpg</bean:define>
		<p class="imagen"><img src="<bean:write name="rutaImg" />" alt="" /></p>
		
		<div class="tabla">
			<bean:define id="aspectName"> <bean:message key="ob.resAnon.intav.report.Ev25.ob.tableTitle"/> </bean:define>
			<bean:define id="graphName"> <bean:message key="observatory.graphic.evolution.aspect.mid.puntuation" arg0="<%= aspectName %>"/> </bean:define>
			<table class="evolucion" summary="<bean:message key="anonymous.html.summary.table" arg0="<%= graphName %>" />">
				<caption><span><bean:message key="anonymous.html.segment.result.evag.table.caption" arg0="<%= aspectName %>" /></span></caption>
				<thead>
					<tr>
						<th><bean:message key="resultados.anonimos.date" /></th>
						<th><bean:message key="resultados.anonimos.punt.media" /></th>
					</tr>
				</thead>
				<tbody>
					<logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AG %>">
						<tr>
							<td><bean:write name="item" property="label" /></td>
							<td><bean:write name="item" property="value" /></td>
						</tr>
					</logic:iterate>
				</tbody>
			</table>
		</div>
		
		<h2><bean:message key="ob.resAnon.intav.report.chapterEv26.title" /></h2>
		
		<bean:define id="rutaImg">./img/graficas/<bean:message key="observatory.graphic.evolution.aspect.mid.puntuation.name" arg0="<%= Constants.OBSERVATORY_GRAPHIC_ASPECT_ALTERNATIVE_ID %>"/>.jpg</bean:define>
		<p class="imagen"><img src="<bean:write name="rutaImg" />" alt="" /></p>
		
		<div class="tabla">
			<bean:define id="aspectName"> <bean:message key="ob.resAnon.intav.report.Ev26.ob.tableTitle"/> </bean:define>
			<bean:define id="graphName"> <bean:message key="observatory.graphic.evolution.aspect.mid.puntuation" arg0="<%= aspectName %>"/> </bean:define>
			<table class="evolucion" summary="<bean:message key="anonymous.html.summary.table" arg0="<%= graphName %>" />">
				<caption><span><bean:message key="anonymous.html.segment.result.evag.table.caption" arg0="<%= aspectName %>" /></span></caption>
				<thead>
					<tr>
						<th><bean:message key="resultados.anonimos.date" /></th>
						<th><bean:message key="resultados.anonimos.punt.media" /></th>
					</tr>
				</thead>
				<tbody>
					<logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AAL %>">
						<tr>
							<td><bean:write name="item" property="label" /></td>
							<td><bean:write name="item" property="value" /></td>
						</tr>
					</logic:iterate>
				</tbody>
			</table>
		</div>
		
		<h2><bean:message key="ob.resAnon.intav.report.chapterEv27.title" /></h2>
		
		<bean:define id="rutaImg">./img/graficas/<bean:message key="observatory.graphic.evolution.aspect.mid.puntuation.name" arg0="<%= Constants.OBSERVATORY_GRAPHIC_ASPECT_PRESENTATION_ID %>"/>.jpg</bean:define>
		<p class="imagen"><img src="<bean:write name="rutaImg" />" alt="" /></p>
		
		<div class="tabla">
			<bean:define id="aspectName"> <bean:message key="ob.resAnon.intav.report.Ev27.ob.tableTitle"/> </bean:define>
			<bean:define id="graphName"> <bean:message key="observatory.graphic.evolution.aspect.mid.puntuation" arg0="<%= aspectName %>"/> </bean:define>
			<table class="evolucion" summary="<bean:message key="anonymous.html.summary.table" arg0="<%= graphName %>" />">
				<caption><span><bean:message key="anonymous.html.segment.result.evag.table.caption" arg0="<%= aspectName %>" /></span></caption>
				<thead>
					<tr>
						<th><bean:message key="resultados.anonimos.date" /></th>
						<th><bean:message key="resultados.anonimos.punt.media" /></th>
					</tr>
				</thead>
				<tbody>
					<logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AP %>">
						<tr>
							<td><bean:write name="item" property="label" /></td>
							<td><bean:write name="item" property="value" /></td>
						</tr>
					</logic:iterate>
				</tbody>
			</table>
		</div>
		
		<h2><bean:message key="ob.resAnon.intav.report.chapterEv28.title" /></h2>
		
		<bean:define id="rutaImg">./img/graficas/<bean:message key="observatory.graphic.evolution.aspect.mid.puntuation.name" arg0="<%= Constants.OBSERVATORY_GRAPHIC_ASPECT_STRUCTURE_ID %>"/>.jpg</bean:define>
		<p class="imagen"><img src="<bean:write name="rutaImg" />" alt="" /></p>
		
		<div class="tabla">
			<bean:define id="aspectName"> <bean:message key="ob.resAnon.intav.report.Ev28.ob.tableTitle"/> </bean:define>
			<bean:define id="graphName"> <bean:message key="observatory.graphic.evolution.aspect.mid.puntuation" arg0="<%= aspectName %>"/> </bean:define>
			<table class="evolucion" summary="<bean:message key="anonymous.html.summary.table" arg0="<%= graphName %>" />">
				<caption><span><bean:message key="anonymous.html.segment.result.evag.table.caption" arg0="<%= aspectName %>" /></span></caption>
				<thead>
					<tr>
						<th><bean:message key="resultados.anonimos.date" /></th>
						<th><bean:message key="resultados.anonimos.punt.media" /></th>
					</tr>
				</thead>
				<tbody>
					<logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AE %>">
						<tr>
							<td><bean:write name="item" property="label" /></td>
							<td><bean:write name="item" property="value" /></td>
						</tr>
					</logic:iterate>
				</tbody>
			</table>
		</div>
		
		<h2><bean:message key="ob.resAnon.intav.report.chapterEv29.title" /></h2>
		
		<bean:define id="rutaImg">./img/graficas/<bean:message key="observatory.graphic.evolution.aspect.mid.puntuation.name" arg0="<%= Constants.OBSERVATORY_GRAPHIC_ASPECT_NAVIGATION_ID %>"/>.jpg</bean:define>
		<p class="imagen"><img src="<bean:write name="rutaImg" />" alt="" /></p>
		
		<div class="tabla">
			<bean:define id="aspectName"> <bean:message key="ob.resAnon.intav.report.Ev29.ob.tableTitle"/> </bean:define>
			<bean:define id="graphName"> <bean:message key="observatory.graphic.evolution.aspect.mid.puntuation" arg0="<%= aspectName %>"/> </bean:define>
			<table class="evolucion" summary="<bean:message key="anonymous.html.summary.table" arg0="<%= graphName %>" />">
				<caption><span><bean:message key="anonymous.html.segment.result.evag.table.caption" arg0="<%= aspectName %>" /></span></caption>
				<thead>
					<tr>
						<th><bean:message key="resultados.anonimos.date" /></th>
						<th><bean:message key="resultados.anonimos.punt.media" /></th>
					</tr>
				</thead>
				<tbody>
					<logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AN %>">
						<tr>
							<td><bean:write name="item" property="label" /></td>
							<td><bean:write name="item" property="value" /></td>
						</tr>
					</logic:iterate>
				</tbody>
			</table>
		</div>
		
	</div>
</div>

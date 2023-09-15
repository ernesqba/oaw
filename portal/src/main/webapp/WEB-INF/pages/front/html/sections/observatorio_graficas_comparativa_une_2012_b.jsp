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
<%@ include file="/common/taglibs.jsp" %> 
<%@page import="es.inteco.common.Constants"%>
<html:xhtml/>
<inteco:sesion action="ifConfigAdmin">

	<bean:parameter id="id" name="<%=Constants.ID %>"/>
	<bean:parameter id="id_observatorio" name="<%=Constants.ID_OBSERVATORIO %>"/>
	<bean:parameter id="idObservatorio" name="<%=Constants.ID_OBSERVATORIO %>"/>
	<bean:parameter id="observatoryType" name="<%=Constants.TYPE_OBSERVATORY %>"/>
	
	<bean:define id="grParam" ><%= Constants.GRAPHIC %></bean:define>
	<bean:define id="grValue" ><%= Constants.OBSERVATORY_GRAPHIC_INITIAL %></bean:define>
	<bean:define id="grRegenerate" ><%= Constants.OBSERVATORY_GRAPHIC_COMPARATIVE %></bean:define>
	
	<jsp:useBean id="params" class="java.util.HashMap" />
	<c:set target="${params}" property="id" value="${id}" />
	<c:set target="${params}" property="id_observatorio" value="${id_observatorio}" />
	<c:set target="${params}" property="${grParam}" value="${grValue}" />
	<c:set target="${params}" property="Otype" value="${observatoryType}" />
	
	<!-- observatorio_graficas_comparativa_une_2012_b.jsp-->
    <div id="main">

        <div id="container_menu_izq">
            <jsp:include page="menu.jsp"/>
        </div>

        <div id="container_der">
            <div id="migas">
                <p class="sr-only"><bean:message key="ubicacion.usuario" /></p>
                <ol class="breadcrumb">
                  <li><html:link forward="observatoryMenu"><span class="glyphicon glyphicon-home" aria-hidden="true"></span><bean:message key="migas.observatorio" /></html:link></li>
                  <li><html:link forward="resultadosPrimariosObservatorio" paramName="idObservatorio" paramId="<%= Constants.ID_OBSERVATORIO %>"><bean:message key="migas.indice.observatorios.realizados.lista"/></html:link></li>
                  <li><html:link forward="getObservatoryGraphic" name="params"><bean:message key="migas.indice.observatorios.menu.graficas"/></html:link></li>
                  <li class="active"><bean:message key="migas.indice.observatorios.menu.graficas.evolucion"/></li>
                </ol>
            </div>
            
            <div id="cajaformularios">
                <h2><bean:message key="indice.observatorios.menu.graficas.evolucion" /></h2>
                    <jsp:include page="/common/crawler_messages.jsp" />
                    <logic:equal name="<%= Constants.OBSERVATORY_RESULTS %>" value="<%= Constants.SI %>">
                        <h3>1. <bean:message key="resultados.anonimos.nivel.comformidad.accesibilidad.aa.title" /></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.porc.portales"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AA %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_APPROVAL_LEVEL_AA %>"></img></div>

                        <h3>2. <bean:message key="resultados.anonimos.nivel.comformidad.accesibilidad.a.title" /></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.porc.portales"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_A %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_APPROVAL_LEVEL_A %>"></img></div>

                        <h3>3. <bean:message key="resultados.anonimos.nivel.comformidad.accesibilidad.nv.title" /></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.porc.portales"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_NV %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_APPROVAL_LEVEL_NV %>"></img></div>

                        <h3>4. <bean:message key="resultados.anonimos.puntuacion.media.observatorio.title" /></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_MID_PUNT %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_MID_MARK %>"></img></div>

                        <h3>5. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.1"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V111 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_1_VERIFICATION %>"></img></div>

                        <h3>6. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.2"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V112 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_2_VERIFICATION %>"></img></div>

                        <h3>7. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.3"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V113 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_3_VERIFICATION %>"></img></div>

                        <h3>8. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.4"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V114 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_4_VERIFICATION %>"></img></div>

                        <h3>9. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.5"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V115 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_5_VERIFICATION %>"></img></div>

                        <h3>10.<bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.6"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V116 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_6_VERIFICATION %>"></img></div>

                        <h3>11. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.7"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V117 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_7_VERIFICATION %>"></img></div>

                        <h3>12. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.8"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V121 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_8_VERIFICATION %>"></img></div>

                        <h3>13. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.9"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V122 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_9_VERIFICATION %>"></img></div>

                        <h3>14. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.10"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V123 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_10_VERIFICATION %>"></img></div>

                        <h3>15. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.11"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V211 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_11_VERIFICATION %>"></img></div>

                        <h3>16. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.12"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V212 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_12_VERIFICATION %>"></img></div>

                        <h3>17. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.13"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V213 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_13_VERIFICATION %>"></img></div>

                        <h3>18. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 1.14"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V214 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_1_14_VERIFICATION %>"></img></div>

                        <h3>19. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 2.1"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V215 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_2_1_VERIFICATION %>"></img></div>

                        <h3>20. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 2.2"/></h3>
                        <div class="graphicInfo2">
                        <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V216 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_2_2_VERIFICATION %>"></img></div>

                        <h3>21. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 2.3"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V217 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_2_3_VERIFICATION %>"></img></div>

                        <h3>22. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 2.4"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V221 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_2_4_VERIFICATION %>"></img></div>

                        <h3>23. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 2.5"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V222 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_2_5_VERIFICATION %>"></img></div>

                        <h3>24. <bean:message key="resultados.anonimos.puntuacion.media.verificacion.title" arg0=" 2.6"/></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_V223 %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_VERIFICATION %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_2_6_VERIFICATION %>"></img></div>

                        <h3>25. <bean:message key="resultados.anonimos.puntuacion.media.aspecto.title">
                                <jsp:attribute name="arg0">
                                    <bean:message key="observatory.aspect.general"/>
                                </jsp:attribute>
                            </bean:message></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AG %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_ASPECT %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_ASPECT_GENERAL_ID %>"></img></div>

                        <h3>26. <bean:message key="resultados.anonimos.puntuacion.media.aspecto.title">
                                <jsp:attribute name="arg0">
                                    <bean:message key="observatory.aspect.presentation"/>
                                </jsp:attribute>
                            </bean:message></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AP %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>

                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_ASPECT %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_ASPECT_PRESENTATION_ID %>"></img></div>

                        <h3>27. <bean:message key="resultados.anonimos.puntuacion.media.aspecto.title">
                                <jsp:attribute name="arg0">
                                    <bean:message key="observatory.aspect.structure"/>
                                </jsp:attribute>
                            </bean:message></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AE %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_ASPECT %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_ASPECT_STRUCTURE_ID %>"></img></div>

                        <h3>28. <bean:message key="resultados.anonimos.puntuacion.media.aspecto.title">
                                <jsp:attribute name="arg0">
                                    <bean:message key="observatory.aspect.navigation"/>
                                </jsp:attribute>
                            </bean:message></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AN %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_ASPECT %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_ASPECT_NAVIGATION_ID %>"></img></div>

                        <h3>29. <bean:message key="resultados.anonimos.puntuacion.media.aspecto.title">
                                <jsp:attribute name="arg0">
                                    <bean:message key="observatory.aspect.alternatives"/>
                                </jsp:attribute>
                            </bean:message></h3>
                        <div class="graphicInfo2">
                            <table>
                                <tr>
                                    <th><bean:message key="resultados.anonimos.date"/></th>
                                    <th><bean:message key="resultados.anonimos.punt.media"/></th>
                                </tr>
                                <logic:iterate id="item" name="<%= Constants.OBSERVATORY_GRAPHIC_EVOLUTION_DATA_LIST_AAL %>">
                                    <tr>
                                        <td><bean:write name="item" property="label" /></td>
                                        <td><bean:write name="item" property="value"/></td>
                                    </tr>
                                </logic:iterate>
                            </table>
                        </div>
                        <div class="divCenter"><img src="<%=request.getContextPath()%>/secure/GraficasObservatorio.do?<%= Constants.TYPE_OBSERVATORY %>=<%= observatoryType %>&amp;<%= Constants.ID %>=<%= id %>&amp;<%= Constants.ID_OBSERVATORIO %>=<%= id_observatorio %>&amp;<%= Constants.GRAPHIC_TYPE %>=<%= Constants.GRAPHIC_ASPECT %>&amp;<%= Constants.GRAPHIC %>=<%= Constants.OBSERVATORY_GRAPHIC_ASPECT_ALTERNATIVE_ID %>"></img></div>

                    </logic:equal>
                    <p id="pCenter">
                        <c:set target="${params}" property="${grParam}" value="${grRegenerate}" />
                        <html:link forward="regenerateGraphicIntav" name="params" styleClass="btn btn-primary btn-lg"> <bean:message key="boton.regenerar.resultados"/> </html:link>
                        <c:set target="${params}" property="${grParam}" value="${grValue}" />
                        <html:link forward="getObservatoryGraphic" name="params" styleClass="btn btn-default btn-lg"> <bean:message key="boton.volver"/> </html:link>
                    </p>
            </div><!-- fin cajaformularios -->
        </div>
    </div>
</inteco:sesion>

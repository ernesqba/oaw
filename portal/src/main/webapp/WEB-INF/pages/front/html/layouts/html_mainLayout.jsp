<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ include file="/common/taglibs.jsp" %>
<html:xhtml/>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="/oaw/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <tiles:insert attribute="headData"/>
</head>

<body>
	<tiles:insert attribute="header"/>
	<tiles:insert attribute="contents"/>
	<tiles:insert attribute="footer"/>
	<!-- Bootstrap core JavaScript -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="/oaw/bootstrap/js/bootstrap.min.js"></script>
    <script type="application/javascript">$(function () { $('[data-toggle="tooltip"]').tooltip() })</script>
</body>

</html>

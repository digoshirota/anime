
<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="head" tagdir="/WEB-INF/tags/responsive/template/head" %>
<%@ attribute name="local" required="true" %>

<c:set var="csslib" value="${['critical','non-critical']}" />
<c:set var="jslib" value="${['criticalJS']}" />

<c:set var="localLib" value="${['critical']}" />
<c:set var="localCss" value="${['style']}" />

<head:criticalInlineCss />

<c:choose>
	<c:when test="${local}">
		<c:forEach var="fragment" items="${csslib}">
		<link rel="preload" href="${fn:escapeXml(contextPath)}/wro/${fragment}.css" as="style">
		</c:forEach>
		<c:forEach var="fragment" items="${jslib}">
			<link rel="preload" href="${fn:escapeXml(contextPath)}/wro/${fragment}.js" as="script">
		</c:forEach>  

		<c:forEach var="fragment" items="${csslib}">
			<link rel="stylesheet" href="${fn:escapeXml(contextPath)}/wro/${fragment}.css" media="print" onload="this.media='all'">
			<noscript><link rel="stylesheet" href="${fn:escapeXml(contextPath)}/wro/${fragment}.css"></noscript>
		</c:forEach> 

	</c:when>
	<c:otherwise>
		<c:forEach var="fragment" items="${localLib}">
			<link rel="preload" href="${fn:escapeXml(contextPath)}/wro/${fragment}.css" as="style">
		</c:forEach>
		<c:forEach var="fragment" items="${localCss}">
			<link rel="preload" href="${fn:escapeXml(contextPath)}/_ui/responsive/theme-anime/css/${fragment}.css" as="style">
		</c:forEach>
		<c:forEach var="fragment" items="${jslib}">
			<link rel="preload" href="${fn:escapeXml(contextPath)}/wro/${fragment}.js" as="script">
		</c:forEach>  

		<c:forEach var="fragment" items="${localLib}">
			<link rel="stylesheet" href="${fn:escapeXml(contextPath)}/wro/${fragment}.css" media="print" onload="this.media='all'">
		</c:forEach> 
		<c:forEach var="fragment" items="${localCss}">
			<link rel="stylesheet" href="${fn:escapeXml(contextPath)}/_ui/responsive/theme-anime/css/${fragment}.css" media="print" onload="this.media='all'">
		</c:forEach>
	</c:otherwise>
</c:choose>

<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/responsive/template/cms" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="head" tagdir="/WEB-INF/tags/responsive/template/head" %>


<%--style.less vira em style.css devido ao Grunt--%>
<c:set var="localCss" value="${['bootstrap.min.css','swiper.min.css','style.css']}" />



<%-- modo produção --%>
<c:set var="critical" value="${['critical.css','non-critical.css']}" />
<c:set var="criticalJS" value="${['criticalJS.js']}" />
<c:set var="moduleJS" value="${['home-module.js']}" />


<%-- Preload do CSS e JS --%>
<c:forEach var="fragment" items="${critical}">
	<link rel="preload" href="${fn:escapeXml(contextPath)}/wro/${fragment}" as="style">
</c:forEach>
<c:forEach var="fragment" items="${criticalJS}">
    <link rel="preload" href="${fn:escapeXml(contextPath)}/wro/${fragment}" as="script">
</c:forEach> 
<c:forEach var="fragment" items="${moduleJS}">
    <link rel="preload" href="${fn:escapeXml(contextPath)}/_ui/responsive/module/${fragment}" as="script">
</c:forEach>

<head:criticalInlineCss />
<c:choose>
	<c:when test="${wro4jEnabled}">
        <c:forEach var="fragment" items="${critical}">
            <link rel="stylesheet" href="${fn:escapeXml(contextPath)}/wro/${fragment}" media="print" onload="this.media='all'">
        </c:forEach>
    </c:when>
    <c:otherwise>	
        <c:forEach var="fragment" items="${localCss}">
            <link rel="stylesheet" href="${fn:escapeXml(contextPath)}/_ui/responsive/theme-anime/css/${fragment}" media="print" onload="this.media='all'">
        </c:forEach>
	</c:otherwise>
</c:choose>


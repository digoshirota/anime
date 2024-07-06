<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/responsive/template/cms" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="head" tagdir="/WEB-INF/tags/responsive/template/head" %>


<c:set var="localCss" value="${['bootstrap.min.css','style.css']}" />

<c:forEach var="fragment" items="${localCss}">
    <link rel="stylesheet" href="${fn:escapeXml(contextPath)}/_ui/responsive/theme-anime/css/${fragment}" media="print" onload="this.media='all'">
</c:forEach>


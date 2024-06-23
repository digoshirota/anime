<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/responsive/template/cms" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="head" tagdir="/WEB-INF/tags/responsive/template/head" %>


<c:set var="jslib" value="${['criticalJS']}" />
<c:set var="jsmodule" value="${['home-module']}" />

<c:forEach var="fragment" items="${jslib}">
    <script src="${fn:escapeXml(contextPath)}/wro/${fragment}.js" defer></script>
</c:forEach> 
<c:forEach var="fragment" items="${jsmodule}">
    <script src="${fn:escapeXml(contextPath)}/_ui/responsive/module/${fragment}.js" defer type="module"></script>  
</c:forEach> 


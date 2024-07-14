<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/responsive/template/cms" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="scripts" tagdir="/WEB-INF/tags/responsive/template/script" %>


<c:set var="jslib" value="${['swiper.min.js']}" />
<c:set var="jsmodule" value="${['home-module.js']}" />




<%-- modo produção --%>
<c:set var="criticalJS" value="${['criticalJS.js']}" />

<c:choose>
	<c:when test="${wro4jEnabled}">
        <c:forEach var="fragment" items="${criticalJS}">
            <script src="${fn:escapeXml(contextPath)}/wro/${fragment}" defer></script>
        </c:forEach>
        <c:forEach var="fragment" items="${jsmodule}">
            <script src="${fn:escapeXml(contextPath)}/_ui/responsive/module/${fragment}" type="module"></script>
        </c:forEach>
    </c:when>
    <c:otherwise>	
        <c:forEach var="fragment" items="${jslib}">
            <script src="${fn:escapeXml(contextPath)}/_ui/responsive/common/lib/${fragment}" defer></script>
        </c:forEach>
        <c:forEach var="fragment" items="${jsmodule}">
            <script src="${fn:escapeXml(contextPath)}/_ui/responsive/module/${fragment}" type="module"></script>
        </c:forEach>
	</c:otherwise>
</c:choose>
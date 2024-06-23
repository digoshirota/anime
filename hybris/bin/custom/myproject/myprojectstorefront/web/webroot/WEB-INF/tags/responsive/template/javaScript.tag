<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/responsive/template/cms" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="script" tagdir="/WEB-INF/tags/responsive/template/script" %>

<%-- <template:javaScriptVariables/> --%>

<c:set var="commonResourcePathHtml" value="${fn:escapeXml(commonResourcePath)}"/>
<c:choose>
	<c:when test="${wro4jEnabled}">
		<script:script />
	</c:when>
	<c:otherwise>
		<script:script />
	</c:otherwise>
</c:choose>


<cms:previewJS cmsPageRequestContextData="${cmsPageRequestContextData}" />

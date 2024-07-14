<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="hideHeaderLinks" required="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav" %>

<%-- globalSlot irá chamar ContentSlotForTemplate  criando anteriormente headerContentSlot --%>
<cms:globalSlot uid="headerContentSlot" var="header" limit="1">
	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col-lg-2">
                    <div class="header__logo">
						<a href="/">
                            <%-- componente customizado do logo SimpleBannerComponent - siteLogoSimpleBannerComponent --%>
							<img title="${fn:escapeXml(contentSlot.cmsComponents[0].media.altText)}" alt="${fn:escapeXml(contentSlot.cmsComponents[0].media.altText)}"
							src="${fn:escapeXml(contentSlot.cmsComponents[0].media.url)}">
						</a>	
					</div>
				</div>
				<div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <c:forEach items="${contentSlot.cmsComponents[1].components}" var="component">
                                    <c:if test="${component.navigationNode.visible}">
                                        <li class="${request.getAttribute("javax.servlet.forward.request_uri") == component.link.url ? "active" : ""}">
                                            <a href="${component.link.url}">${component.link.linkName} <span class="arrow_carrot-down"></span></a>
                                            <c:if test="${not empty component.navigationNode.children}">
                                                <ul class="dropdown">
                                                    <c:forEach items="${component.navigationNode.children}" var="sublink" varStatus="loop">
                                                        <c:forEach items="${sublink.links}" var="sublink2" varStatus="loop">
                                                            <li><a href="${sublink2.url}">${sublink2.linkName}</a></li>
                                                        </c:forEach>
                                                    </c:forEach>
                                                </ul>
                                            </c:if>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </ul>   
                        </nav>
                    </div>
                </div>
            </div>
		</div>
	</header 
</cms:globalSlot>
									